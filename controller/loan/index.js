module.exports = {
    viewLoan: (req, res) => {
        let query =
            "SELECT id, clientType, client_id, lawyer_id, (SELECT name FROM lawyer WHERE id=loan.lawyer_id) AS lawyer, own_amount_percentage, own_interest_per_transaction, own_per_transaction_amount, own_no_of_transaction,  (SELECT firstName FROM client WHERE id=loan.client_id) AS client, loanProduct_id, (SELECT name FROM loan_products WHERE id=loan.loanProduct_id) AS loanProduct, (SELECT currency_id FROM loan_products WHERE id=loan.loanProduct_id) AS currency_id, (SELECT name FROM currency WHERE id=(SELECT currency_id FROM loan_products WHERE id=loan.loanProduct_id)) AS currency, (SELECT graceOnPrincipalPayment FROM loan_products WHERE id=loan.loanProduct_id) AS graceOnPrincipalPayment, (SELECT graceOnInterestPayment FROM loan_products WHERE id=loan.loanProduct_id) AS graceOnInterestPayment, (SELECT graceOnInterestCharged FROM loan_products WHERE id=loan.loanProduct_id) AS graceOnInterestCharged, (SELECT interestMethodology FROM loan_products WHERE id=loan.loanProduct_id) AS interestMethodology, (SELECT loanTransactionProcessingStrategy FROM loan_products WHERE id=loan.loanProduct_id) AS loanTransactionProcessingStrategy, principal, minimumPrincipal, maximumPrincipal, funds_id, (SELECT name FROM funds WHERE id=loan.funds_id) AS funds, loanTerm, minimumLoanTerm, maximumLoanTerm,  repaymentFrequency, repaymentType, interestRate, minimumInterestRate, maximumInterestRate, interestRateType, interestMethodology, expectedDisbursementDate,expectedFirstRepaymentDate, loanOfficer_user_id, (SELECT firstName FROM user WHERE id=loan.loanOfficer_user_id) AS user, loanPurpose_id, (SELECT name FROM loan_purpose WHERE id=loan.loanPurpose_id) AS loanPurpose, createAt, loan_status_id, (SELECT name FROM loan_status WHERE id=loan.loan_status_id) AS loan_status, disburseDate, approvedDate , disburseAmount, approvedAmount FROM loan WHERE status =1";
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
            "SELECT id, clientType, client_id, lawyer_id, (SELECT name FROM lawyer WHERE id=loan.lawyer_id) AS lawyer, own_amount_percentage, own_interest_per_transaction, own_per_transaction_amount, own_no_of_transaction, (SELECT firstName FROM client WHERE id=loan.client_id) AS client, loanProduct_id, (SELECT name FROM loan_products WHERE id=loan.loanProduct_id) AS loanProduct, (SELECT currency_id FROM loan_products WHERE id=loan.loanProduct_id) AS currency_id, (SELECT name FROM currency WHERE id=(SELECT currency_id FROM loan_products WHERE id=loan.loanProduct_id)) AS currency, (SELECT graceOnPrincipalPayment FROM loan_products WHERE id=loan.loanProduct_id) AS graceOnPrincipalPayment, (SELECT graceOnInterestPayment FROM loan_products WHERE id=loan.loanProduct_id) AS graceOnInterestPayment, (SELECT graceOnInterestCharged FROM loan_products WHERE id=loan.loanProduct_id) AS graceOnInterestCharged, (SELECT interestMethodology FROM loan_products WHERE id=loan.loanProduct_id) AS interestMethodology, (SELECT loanTransactionProcessingStrategy FROM loan_products WHERE id=loan.loanProduct_id) AS loanTransactionProcessingStrategy,  principal, minimumPrincipal, maximumPrincipal, funds_id, (SELECT name FROM funds WHERE id=loan.funds_id) AS funds, loanTerm, minimumLoanTerm, maximumLoanTerm,  repaymentFrequency, repaymentType, interestRate, minimumInterestRate, maximumInterestRate, interestRateType, interestMethodology, expectedDisbursementDate,expectedFirstRepaymentDate, loanOfficer_user_id, (SELECT firstName FROM user WHERE id=loan.loanOfficer_user_id) AS user, loanPurpose_id, (SELECT name FROM loan_purpose WHERE id=loan.loanPurpose_id) AS loanPurpose, createAt, loan_status_id, (SELECT name FROM loan_status WHERE id=loan.loan_status_id) AS loan_status, disburseDate, approvedDate, disburseAmount, approvedAmount FROM loan WHERE id=" +
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
            "SELECT loanTerm, repaymentFrequency, (SELECT debit FROM loan_transaction_list WHERE loan_id=loan.id AND status=1 AND type='CP' ) AS all_disburse, (SELECT SUM(cP) FROM loan_transaction_list WHERE loan_id=loan.id AND status=1 AND type='Paid' ) AS pay_disburse ,(SELECT debit FROM loan_transaction_list WHERE loan_id=loan.id AND status=1 AND type='CI' ) AS all_interest, (SELECT SUM(cI) FROM loan_transaction_list WHERE loan_id=loan.id AND status=1 AND type='Paid') AS pay_interest, (SELECT SUM(credit) FROM loan_transaction_list WHERE loan_id=loan.id AND status=1 AND type='WI' ) AS pay_waive, (SELECT SUM(cP) FROM loan_transaction_list WHERE loan_id=loan.id AND status=1 AND type='WO' ) AS writeOffPrincipal, (SELECT SUM(cI) FROM loan_transaction_list WHERE loan_id=loan.id AND status=1 AND type='WO' ) AS writeOffInterest, (SELECT SUM(debit) FROM loan_transaction_list WHERE loan_id=loan.id AND status=1 AND type='CF' ) AS all_fees, (SELECT SUM(credit) FROM loan_transaction_list WHERE loan_id=loan.id AND status=1 AND type='CF' ) AS pay_fees_on_disbursement, (SELECT SUM(credit) FROM loan_transaction_list WHERE loan_id=loan.id AND status=1 AND type='WF' ) AS waive_fee , (SELECT SUM(cF) FROM loan_transaction_list WHERE loan_id=loan.id AND status=1 AND type='Paid' ) AS pay_fees_on_paid FROM loan WHERE id=" +
            req.params.id +
            " AND status =1";
        db.query(query, (err, result) => {
            if (err) {
                res.status(400).json({
                    success: false,
                    message: "Something is really bad happens",
                });
            } else {
                let data = {
                    loanTerm: 0,
                        repaymentFrequency: 0,
                        allDisburse: 0,
                        payDisburse: 0,
                        allInterest: 0,
                        payInterest: 0,
                        payWaive: 0,
                        payableDisburse: 0,
                        payableInterest: 0,
                        interestPerTransaction: 0,
                        totalPayable: 0,
                        writeOffInterest: 0,
                        writeOffPrincipal: 0,
                        allFees: 0,
                        payFees: 0,
                        payFeesOnDisbursement:0,
                        payFeesOnPaid:0,
                        payableFees: 0,
                        waiveFee: 0,
                        payableFees: 0,
                        totalPayAmount: 0,
                }
                if(result.length > 0) {
                    let loanTerm = result[0].loanTerm;
                    let repaymentFrequency = result[0].repaymentFrequency;
                    let noOfTran = loanTerm / repaymentFrequency;
                    let all_disburse = result[0].all_disburse != null ? result[0].all_disburse : 0;
                    let pay_disburse = result[0].pay_disburse != null ? result[0].pay_disburse : 0;
                    let payable_disburse = all_disburse - pay_disburse;
                    let all_interest = result[0].all_interest != null ? result[0].all_interest : 0;
                    let pay_interest = result[0].pay_interest != null ? result[0].pay_interest : 0;
                    let pay_waive = result[0].pay_waive != null ? result[0].pay_waive : 0;
                    let payable_interest = (all_interest - (pay_waive + pay_interest));
    
                    let all_fees = result[0].all_fees != null ? result[0].all_fees : 0
                    let pay_fees_on_disbursement = result[0].pay_fees_on_disbursement != null ? result[0].pay_fees_on_disbursement : 0
                    let pay_fees_on_paid = result[0].pay_fees_on_paid != null ? result[0].pay_fees_on_paid : 0
                    let pay_fees=pay_fees_on_disbursement + pay_fees_on_paid;
                    let waive_fee = result[0].waive_fee != null ? result[0].waive_fee : 0
    
                    let writeOffInterest = result[0].writeOffInterest != null ? result[0].writeOffInterest : 0;
                    let writeOffPrincipal = result[0].writeOffPrincipal != null ? result[0].writeOffPrincipal : 0;
    
                     data = {
                        loanTerm: loanTerm,
                        repaymentFrequency: repaymentFrequency,
                        allDisburse: all_disburse,
                        payDisburse: pay_disburse,
                        allInterest: all_interest,
                        payInterest: pay_interest,
                        payWaive: pay_waive,
                        payableDisburse: payable_disburse,
                        payableInterest: payable_interest,
                        interestPerTransaction: all_interest / noOfTran,
                        totalPayable: payable_disburse + payable_interest,
                        writeOffInterest: writeOffInterest,
                        writeOffPrincipal: writeOffPrincipal,
                        allFees: all_fees,
                        payFees: pay_fees,
                        payFeesOnDisbursement:pay_fees_on_disbursement,
                        payFeesOnPaid:pay_fees_on_paid,
                        payableFees: all_fees - pay_fees,
                        waiveFee: waive_fee,
                        totalPayAmount: ((all_disburse + all_interest + all_fees) - (payable_disburse + payable_interest + pay_fees)),
                    }
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
        let loanTerm = parseInt(req.body.loanTerm);
        let repaymentFrequency = parseInt(req.body.repaymentFrequency);
        let repaymentType = req.body.repaymentType;
        let interestRate = req.body.interestRate;
        let interestRateType = req.body.interestRateType;
        let interestMethodology = req.body.interestMethodology;
        let amount = parseInt(req.body.approvedAmount);
        let own_amount_percentage = 0;
        let own_interest_per_transaction = 0;
        let own_per_transaction_amount = 0;
        let own_no_of_transaction = 0;
        // if (interestMethodology == "flat") {
        if (interestRateType == "year" && repaymentType == "days") {
            own_amount_percentage = (amount * interestRate) / 100;
            own_interest_per_transaction = own_amount_percentage / repaymentFrequency;
            own_no_of_transaction = loanTerm / repaymentFrequency;
            own_per_transaction_amount = amount / own_no_of_transaction;
        } else if (interestRateType == "year" && repaymentType == "weeks") {
            own_amount_percentage = ((amount * interestRate) / 100);
            own_interest_per_transaction = own_amount_percentage / repaymentFrequency;
            own_no_of_transaction = loanTerm / repaymentFrequency;
            own_per_transaction_amount = amount / own_no_of_transaction;
        } else if (interestRateType == "year" && repaymentType == "months") {
            own_amount_percentage = ((amount * interestRate) / 100);
            own_interest_per_transaction = own_amount_percentage / 12;
            own_no_of_transaction = loanTerm / repaymentFrequency;
            own_per_transaction_amount = amount / own_no_of_transaction;
        } else if (interestRateType == "month" && repaymentType == "days") {
            own_amount_percentage = ((amount * interestRate) / 100);
            own_interest_per_transaction = own_amount_percentage / 30;
            own_no_of_transaction = loanTerm / repaymentFrequency;
            own_per_transaction_amount = amount / own_no_of_transaction;
        } else if (interestRateType == "month" && repaymentType == "weeks") {
            own_amount_percentage = ((amount * interestRate) / 100);
            own_interest_per_transaction = own_amount_percentage / 4;
            own_no_of_transaction = loanTerm / repaymentFrequency;
            own_per_transaction_amount = amount / own_no_of_transaction;
        } else if (interestRateType == "month" && repaymentType == "months") {
            own_amount_percentage = ((amount * interestRate) / 100);
            own_interest_per_transaction = own_amount_percentage;
            own_no_of_transaction = loanTerm / repaymentFrequency;
            own_per_transaction_amount = amount / own_no_of_transaction;
        }
        // }
        let query =
            "UPDATE   loan SET loan_status_id='" +
            req.body.loan_status_id +
            "', approvedDate='" +
            req.body.currenctDate +
            "', approvedNotes='" +
            req.body.approvedNotes +
            "', approvedAmount='" +
            amount +
            "', own_amount_percentage='" +
            own_amount_percentage.toFixed(2) +
            "', own_interest_per_transaction='" +
            own_interest_per_transaction.toFixed(0) +
            "', own_no_of_transaction='" +
            own_no_of_transaction.toFixed(0) +
            "', own_per_transaction_amount='" +
            own_per_transaction_amount.toFixed(0) +
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

    loanDisburseDis: (req, res) => {


        // let query =
        //     "UPDATE   loan SET loan_status_id='" +
        //     req.body.loan_status_id +
        //     "', disburseAccount='" +
        //     req.body.disburseAccount +
        //     "', disburseCheque='" +
        //     req.body.disburseCheque +
        //     "', disburseRoutingCode='" +
        //     req.body.disburseRoutingCode +
        //     "', disburseReceipt='" +
        //     req.body.disburseReceipt +
        //     "', disburseBank='" +
        //     req.body.disburseBank +
        //     "', disburseDate='" +
        //     req.body.currenctDate +
        //     "', disburseNotes='" +
        //     req.body.disburseNotes +
        //     "', disburseAmount='" +
        //     req.body.disburseAmount +
        //     "', expectedDisbursementDate='" +
        //     req.body.expectedDisbursementDate +
        //     "', expectedFirstRepaymentDate='" +
        //     req.body.expectedFirstRepaymentDate +


        //     "'" +
        //     " WHERE id=" +
        //     req.body.loan_id;
        // db.query(query, (err, result) => {
        //     if (err) {
        //         res.status(400).json({
        //             success: false,
        //             message: "Something is really bad happens",
        //         });
        //     } else {
        //         res.status(200).json({
        //             success: true,
        //             message: "Success",
        //             result: "Successfully Disburse",
        //         });
        //     }
        // });
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
            "', lawyer_id='" +
            req.body.lawyer_id +
            "', loanProduct_id='" +
            req.body.loanProduct_id +
            "', principal='" +
            req.body.principal +
            "', minimumPrincipal='" +
            req.body.minimumPrincipal +
            "', maximumPrincipal='" +
            req.body.maximumPrincipal +
            "', funds_id='" +
            req.body.funds_id +
            "', loanTerm='" +
            req.body.loanTerm +
            "', minimumLoanTerm='" +
            req.body.minimumLoanTerm +
            "', maximumLoanTerm='" +
            req.body.maximumLoanTerm +
            "', repaymentFrequency='" +
            req.body.repaymentFrequency +
            "', repaymentType='" +
            req.body.repaymentType +
            "', interestRate='" +
            req.body.interestRate +
            "', minimumInterestRate='" +
            req.body.minimumInterestRate +
            "', maximumInterestRate='" +
            req.body.maximumInterestRate +

            "', interestRateType='" +
            req.body.interestRateType +
            "', interestMethodology='" +
            req.body.interestMethodology +

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
                    insertId: result.insertId,
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
