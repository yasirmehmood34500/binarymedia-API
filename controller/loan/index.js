module.exports = {
    viewLoan: (req, res) => {
        let query =
            "SELECT id, clientType, client_id, (SELECT firstName FROM client WHERE id=loan.client_id) AS client, loanProduct_id, (SELECT name FROM loan_products WHERE id=loan.loanProduct_id) AS loanProduct, (SELECT currency_id FROM loan_products WHERE id=loan.loanProduct_id) AS currency_id, (SELECT name FROM currency WHERE id=(SELECT currency_id FROM loan_products WHERE id=loan.loanProduct_id)) AS currency, (SELECT graceOnPrincipalPayment FROM loan_products WHERE id=loan.loanProduct_id) AS graceOnPrincipalPayment, (SELECT graceOnInterestPayment FROM loan_products WHERE id=loan.loanProduct_id) AS graceOnInterestPayment, (SELECT graceOnInterestCharged FROM loan_products WHERE id=loan.loanProduct_id) AS graceOnInterestCharged, (SELECT interestMethodology FROM loan_products WHERE id=loan.loanProduct_id) AS interestMethodology, (SELECT loanTransactionProcessingStrategy FROM loan_products WHERE id=loan.loanProduct_id) AS loanTransactionProcessingStrategy, principal, funds_id, (SELECT name FROM funds WHERE id=loan.funds_id) AS funds, loanTerm, repaymentFrequency, repaymentType, interestRate, expectedDisbursementDate,expectedFirstRepaymentDate, loanOfficer_user_id, (SELECT firstName FROM user WHERE id=loan.loanOfficer_user_id) AS user, loanPurpose_id, (SELECT name FROM loan_purpose WHERE id=loan.loanPurpose_id) AS loanPurpose, createAt, loan_status_id, (SELECT name FROM loan_status WHERE id=loan.loan_status_id) AS loan_status, disburseDate, approvedDate , disburseAmount, approvedAmount FROM loan WHERE status =1";
        db.query(query, (err, result) => {
            if (err) {
                res.status(400).json({
                    success: false,
                    message: "Something is really bad happens",
                });
            } else {
                res.status(200).json({
                    success: true,
                    message: "Success",
                    result: result,
                });
            }
        });
    },
    singleLoan: (req, res) => {
        let query =
            "SELECT id, clientType, client_id, (SELECT firstName FROM client WHERE id=loan.client_id) AS client, loanProduct_id, (SELECT name FROM loan_products WHERE id=loan.loanProduct_id) AS loanProduct, (SELECT currency_id FROM loan_products WHERE id=loan.loanProduct_id) AS currency_id, (SELECT name FROM currency WHERE id=(SELECT currency_id FROM loan_products WHERE id=loan.loanProduct_id)) AS currency, (SELECT graceOnPrincipalPayment FROM loan_products WHERE id=loan.loanProduct_id) AS graceOnPrincipalPayment, (SELECT graceOnInterestPayment FROM loan_products WHERE id=loan.loanProduct_id) AS graceOnInterestPayment, (SELECT graceOnInterestCharged FROM loan_products WHERE id=loan.loanProduct_id) AS graceOnInterestCharged, (SELECT interestMethodology FROM loan_products WHERE id=loan.loanProduct_id) AS interestMethodology, (SELECT loanTransactionProcessingStrategy FROM loan_products WHERE id=loan.loanProduct_id) AS loanTransactionProcessingStrategy,  principal, funds_id, (SELECT name FROM funds WHERE id=loan.funds_id) AS funds, loanTerm, repaymentFrequency, repaymentType, interestRate, expectedDisbursementDate,expectedFirstRepaymentDate, loanOfficer_user_id, (SELECT firstName FROM user WHERE id=loan.loanOfficer_user_id) AS user, loanPurpose_id, (SELECT name FROM loan_purpose WHERE id=loan.loanPurpose_id) AS loanPurpose, createAt, loan_status_id, (SELECT name FROM loan_status WHERE id=loan.loan_status_id) AS loan_status, disburseDate, approvedDate, disburseAmount, approvedAmount FROM loan WHERE id=" +
            req.params.id +
            " AND status =1";
        db.query(query, (err, result) => {
            if (err) {
                res.status(400).json({
                    success: false,
                    message: "Something is really bad happens",
                });
            } else {
                res.status(200).json({
                    success: true,
                    message: "Success",
                    result: result.length ? result[0] : {},
                });
            }
        });
    },
    calculateLoanInterest: (req, res) => {
        let query =
            "SELECT loanTerm, repaymentFrequency, (SELECT debit FROm loan_transaction_list WHERE loan_id=loan.id AND status=1 AND type='CP' ) AS all_disburse, (SELECT SUM(cP) FROM loan_transaction_list WHERE loan_id=loan.id AND status=1 AND type='Paid' ) AS pay_disburse ,(SELECT debit FROM loan_transaction_list WHERE loan_id=loan.id AND status=1 AND type='CI' ) AS all_interest, (SELECT SUM(cI) FROM loan_transaction_list WHERE loan_id=loan.id AND status=1 AND type='Paid') AS pay_interest, (SELECT SUM(credit) FROM loan_transaction_list WHERE loan_id=loan.id AND status=1 AND type='WI' ) AS pay_waive FROM loan WHERE id=" +
            req.params.id +
            " AND status =1";
        db.query(query, (err, result) => {
            if (err) {
                res.status(400).json({
                    success: false,
                    message: "Something is really bad happens",
                });
            } else {
                let loanTerm=result[0].loanTerm;
                let repaymentFrequency= result[0].repaymentFrequency;
                let noOfTran=loanTerm/repaymentFrequency;
                let all_disburse=result[0].all_disburse != null ? result[0].all_disburse : 0;
                let pay_disburse=result[0].pay_disburse != null ? result[0].pay_disburse : 0 ;
                let payable_disburse= all_disburse - pay_disburse;
               let all_interest= result[0].all_interest  != null ? result[0].all_interest : 0 ;
                 let   pay_interest= result[0].pay_interest  != null ? result[0].pay_interest : 0;
                 let pay_waive= result[0].pay_waive  != null ? result[0].pay_waive : 0;
                 let payable_interest=(all_interest - (pay_waive + pay_interest));
                let data={
                    loanTerm: loanTerm,
                    repaymentFrequency: repaymentFrequency,
                    allDisburse: all_disburse ,
                    payDisburse: pay_disburse ,
                    allInterest: all_interest ,
                    payInterest: pay_interest,
                    payWaive: pay_waive,
                    payableDisburse: payable_disburse,
                    payableInterest: payable_interest,
                    interestPerTransaction: all_interest/noOfTran,
                    totalPayable: payable_disburse+payable_interest,
                }
                res.status(200).json({
                    success: true,
                    message: "Success",
                    result: data,
                });
            }
        });
    },

    loanApprove: (req, res) => {
        let query =
            "UPDATE   loan SET loan_status_id='" +
            req.body.loan_status_id +
            "', approvedDate='" +
            req.body.currenctDate +
            "', approvedNotes='" +
            req.body.approvedNotes +
            "', approvedAmount='" +
            req.body.approvedAmount +
            "'" +
            " WHERE id=" +
            req.body.loan_id;
        db.query(query, (err, result) => {
            if (err) {
                res.status(400).json({
                    success: false,
                    message: "Something is really bad happens",
                });
            } else {
                res.status(200).json({
                    success: true,
                    message: "Success",
                    result: "Successfully Approved",
                });
            }
        });
    },

    loanWriteOff: (req, res) => {
        let query =
            "UPDATE   loan SET loan_status_id='" +
            req.body.loan_status_id +
            "', writeOffNote='" +
            req.body.currenctDate +
            "', writeOffNote='" +
            req.body.writeOffNote +
           
            "'" +
            " WHERE id=" +
            req.body.loan_id;
        db.query(query, (err, result) => {
            if (err) {
                res.status(400).json({
                    success: false,
                    message: "Something is really bad happens",
                });
            } else {
                res.status(200).json({
                    success: true,
                    message: "Success",
                    result: "Successfully Write Off",
                });
            }
        });
    },
    
    
    loanChangeOfficer: (req, res) => {
        let query =
            "UPDATE   loan SET loanOfficer_user_id='" +
            req.body.loanOfficer_user_id +
            "'" +
            " WHERE id=" +
            req.body.loan_id;
        db.query(query, (err, result) => {
            if (err) {
                res.status(400).json({
                    success: false,
                    message: "Something is really bad happens",
                });
            } else {
                res.status(200).json({
                    success: true,
                    message: "Success",
                    result: "Successfully Change Officer",
                });
            }
        });
    },
    loanUndoDisburse: (req, res) => {
        let query =
            "UPDATE   loan SET loan_status_id='" +
            req.body.loan_status_id +
            "'" +
            " WHERE id=" +
            req.body.loan_id;
        db.query(query, (err, result) => {
            if (err) {
                res.status(400).json({
                    success: false,
                    message: "Something is really bad happens",
                });
            } else {
                res.status(200).json({
                    success: true,
                    message: "Success",
                    result: "Successfully Undo Disburse",
                });
            }
        });
    },
    
    loanUndoApprovel: (req, res) => {
        let query =
            "UPDATE   loan SET loan_status_id='" +
            req.body.loan_status_id +
            "'" +
            " WHERE id=" +
            req.body.loan_id;
        db.query(query, (err, result) => {
            if (err) {
                res.status(400).json({
                    success: false,
                    message: "Something is really bad happens",
                });
            } else {
                res.status(200).json({
                    success: true,
                    message: "Success",
                    result: "Successfully Undo Approvel",
                });
            }
        });
    },

    loanUndoWriteOff: (req, res) => {
        let query =
            "UPDATE   loan SET loan_status_id='" +
            req.body.loan_status_id +
            "'" +
            " WHERE id=" +
            req.body.loan_id;
        db.query(query, (err, result) => {
            if (err) {
                res.status(400).json({
                    success: false,
                    message: "Something is really bad happens",
                });
            } else {
                res.status(200).json({
                    success: true,
                    message: "Success",
                    result: "Successfully Undo Write off",
                });
            }
        });
    },

    loanReject: (req, res) => {
        let query =
            "UPDATE   loan SET rejectNote='" +
            req.body.rejectNote +
            "', loan_status_id='" +
            4 +
            "'" +
            " WHERE id=" +
            req.body.loan_id;
        db.query(query, (err, result) => {
            if (err) {
                res.status(400).json({
                    success: false,
                    message: "Something is really bad happens",
                });
            } else {
                res.status(200).json({
                    success: true,
                    message: "Success",
                    result: "Successfully Reject",
                });
            }
        });
    },

    loanWithdraw: (req, res) => {
        let query =
            "UPDATE   loan SET withdrawNotes='" +
            req.body.withdrawNotes +
            "', loan_status_id='" +
            5 +
            "'" +
            " WHERE id=" +
            req.body.loan_id;
        db.query(query, (err, result) => {
            if (err) {
                res.status(400).json({
                    success: false,
                    message: "Something is really bad happens",
                });
            } else {
                res.status(200).json({
                    success: true,
                    message: "Success",
                    result: "Successfully Withdraw",
                });
            }
        });
    },
    

    loanDisburse: (req, res) => {
        let query =
            "UPDATE   loan SET loan_status_id='" +
            req.body.loan_status_id +
            "', disburseAccount='" +
            req.body.disburseAccount +
            "', disburseCheque='" +
            req.body.disburseCheque +
            "', disburseRoutingCode='" +
            req.body.disburseRoutingCode +
            "', disburseReceipt='" +
            req.body.disburseReceipt +
            "', disburseBank='" +
            req.body.disburseBank +
            "', disburseDate='" +
            req.body.currenctDate +
            "', disburseNotes='" +
            req.body.disburseNotes +
            "', disburseAmount='" +
            req.body.disburseAmount +
            "', expectedDisbursementDate='" +
            req.body.expectedDisbursementDate +
            "', expectedFirstRepaymentDate='" +
            req.body.expectedFirstRepaymentDate +


            "'" +
            " WHERE id=" +
            req.body.loan_id;
        db.query(query, (err, result) => {
            if (err) {
                res.status(400).json({
                    success: false,
                    message: "Something is really bad happens",
                });
            } else {
                res.status(200).json({
                    success: true,
                    message: "Success",
                    result: "Successfully Disburse",
                });
            }
        });
    },

    deleteLoan: (req, res) => {
        let query =
            "UPDATE loan  SET status = 0 WHERE id=" +
            req.params.id +
            " AND status =1";
        db.query(query, (err, result) => {
            if (err) {
                res.status(400).json({
                    success: false,
                    message: "Something is really bad happens",
                });
            } else {
                res.status(200).json({
                    success: true,
                    message: "Success",
                    result: "Successfully Deleted",
                });
            }
        });
    },
    addLoan: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        let query =
            "INSERT INTO  loan SET clientType='" +
            req.body.clientType +
            "', client_id='" +
            req.body.client_id +
            "', loanProduct_id='" +
            req.body.loanProduct_id +
            "', principal='" +
            req.body.principal +
            "', funds_id='" +
            req.body.funds_id +
            "', loanTerm='" +
            req.body.loanTerm +
            "', repaymentFrequency='" +
            req.body.repaymentFrequency +
            "', repaymentType='" +
            req.body.repaymentType +
            "', interestRate='" +
            req.body.interestRate +
            
            "', loanOfficer_user_id='" +
            req.body.loanOfficer_user_id +
            "', loanPurpose_id='" +
            req.body.loanPurpose_id +
            "', expectedDisbursementDate='" +
            req.body.expectedDisbursementDate +
            "', expectedFirstRepaymentDate='" +
            req.body.expectedFirstRepaymentDate +
            "', createAt='" +
            year +
            "-" +
            month +
            "-" +
            date +
            "'";
        db.query(query, (err, result) => {
            if (err) {
                res.status(400).json({
                    success: false,
                    message: "Something is really bad happens",
                });
            } else {
                res.status(200).json({
                    success: true,
                    message: "Success",
                    result: "Successfully Added",
                });
            }
        });
    },
    updateLoan: (req, res) => {
        let query =
            "UPDATE loan SET principal='" +
            req.body.principal +
            "', funds_id='" +
            req.body.funds_id +
            "', loanTerm='" +
            req.body.loanTerm +
            "', repaymentFrequency='" +
            req.body.repaymentFrequency +
            "', repaymentType='" +
            req.body.repaymentType +
            "', interestRate='" +
            req.body.interestRate +
            "', expectedDisbursementDate='" +
            req.body.expectedDisbursementDate +
            "', loanOfficer_user_id='" +
            req.body.loanOfficer_user_id +
            "', loanPurpose_id='" +
            req.body.loanPurpose_id +
            "', expectedFirstRepaymentDate='" +
            req.body.expectedFirstRepaymentDate +
            "' WHERE id=" +
            req.body.id;
        db.query(query, (err, result) => {
            if (err) {
                res.status(400).json({
                    success: false,
                    message: "Something is really bad happens",
                });
            } else {
                res.status(200).json({
                    success: true,
                    message: "Success",
                    result: "Successfully Updated",
                });
            }
        });
    },
};
