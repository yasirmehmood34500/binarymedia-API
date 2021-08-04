module.exports = {
    viewLoan: (req, res) => {
        let query =
            "SELECT id, clientType, client_id, (SELECT firstName FROM client WHERE id=loan.client_id) AS client, loanProduct_id, (SELECT name FROM loan_products WHERE id=loan.loanProduct_id) AS loanProduct, principal, funds_id, (SELECT name FROM funds WHERE id=loan.funds_id) AS funds, loanTerm, repaymentFrequency, repaymentType, interestRate, expectedDisbursementDate, loanOfficer_user_id, (SELECT firstName FROM user WHERE id=loan.loanOfficer_user_id) AS user, loanPurpose_id FROM loan WHERE status =1";
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
            "SELECT id, clientType, client_id, (SELECT firstName FROM client WHERE id=loan.client_id) AS client, loanProduct_id, (SELECT name FROM loan_products WHERE id=loan.loanProduct_id) AS loanProduct, principal, funds_id, (SELECT name FROM funds WHERE id=loan.funds_id) AS funds, loanTerm, repaymentFrequency, repaymentType, interestRate, expectedDisbursementDate, loanOfficer_user_id, (SELECT firstName FROM user WHERE id=loan.loanOfficer_user_id) AS user, loanPurpose_id FROM loan WHERE id=" +
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
            "', expectedDisbursementDate='" +
            req.body.expectedDisbursementDate +
            "', loanOfficer_user_id='" +
            req.body.loanOfficer_user_id +
            "', loanPurpose_id='" +
            req.body.loanPurpose_id +
          
           
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
            "UPDATE loan SET clientType='" +
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
            "', expectedDisbursementDate='" +
            req.body.expectedDisbursementDate +
            "', loanOfficer_user_id='" +
            req.body.loanOfficer_user_id +
            "', loanPurpose_id='" +
            req.body.loanPurpose_id +
           
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
