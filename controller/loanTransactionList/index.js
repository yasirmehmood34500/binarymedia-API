module.exports = {
    viewLoanTransactionList: (req, res) => {
        let query =
            "SELECT id, loan_id, payment_type_id, (SELECT name FROm payment_type WHERE id=loan_transaction_list.payment_type_id) AS payment_type, submittedOn, transactionType, debit, credit, account, cheque, routingCode, receipt, bank, detail, createAt FROM loan_transaction_list WHERE status =1";
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
    viewLoanTransactionListLoanWise: (req, res) => {
        let query =
            "SELECT id, loan_id,payment_type_id, (SELECT name FROm payment_type WHERE id=loan_transaction_list.payment_type_id) AS payment_type, submittedOn, transactionType, debit, credit, account, cheque, routingCode, receipt, bank, detail, createAt FROM loan_transaction_list WHERE status =1 AND loan_id="+req.params.loan_id;
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
    singleLoanTransactionList: (req, res) => {
        let query =
            "SELECT id, loan_id,payment_type_id, (SELECT name FROm payment_type WHERE id=loan_transaction_list.payment_type_id) AS payment_type, submittedOn, transactionType, debit, credit, account, cheque, routingCode, receipt, bank, detail,  createAt FROM loan_transaction_list WHERE id=" +
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
    deleteLoanTransactionList: (req, res) => {
        let query =
            "UPDATE loan_transaction_list  SET status = 0 WHERE id=" +
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
    deleteLoanTransactionListLoanWise: (req, res) => {
        let query =
            "UPDATE loan_transaction_list  SET status = 0 WHERE loan_id=" +
            req.params.loan_id +
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
    deleteLoanTransactionListWriteOffLoanWise: (req, res) => {
        let query =
            "UPDATE loan_transaction_list  SET status = 0 WHERE loan_id=" +
            req.params.loan_id +
            " AND status =1 AND type='WO'";
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
    addLoanTransactionList: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        

        let query =
            "INSERT INTO  loan_transaction_list SET loan_id='" +
            req.body.loan_id +
            "', payment_type_id='" +
            req.body.payment_type_id +
            "', submittedOn='" +
            req.body.submittedOn +
            "', transactionType='" +
            req.body.transactionType +
            "', debit='" +
            req.body.debit +
            "', credit='" +
            req.body.credit +
            "', cP='" +
            req.body.cP +
            "', cI='" +
            req.body.cI +
            "', cF='" +
            req.body.cF +
            "', type='" +
            req.body.type +
            "', account='" +
            req.body.account +
            "', cheque='" +
            req.body.cheque +
            "', routingCode='" +
            req.body.routingCode +
            "', receipt='" +
            req.body.receipt +
            "', bank='" +
            req.body.bank +
            "', detail='" +
            req.body.detail +
           
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
    updateLoanTransactionList: (req, res) => {
        let query =
            "UPDATE loan_transaction_list SET loan_id='" +
            req.body.loan_id +
            "', payment_type_id='" +
            req.body.payment_type_id +
            "', submittedOn='" +
            req.body.submittedOn +
            "', transactionType='" +
            req.body.transactionType +
            "', debit='" +
            req.body.debit +
            "', credit='" +
            req.body.credit +
            "', cP='" +
            req.body.cP +
            "', cI='" +
            req.body.cI +
            "', cF='" +
            req.body.cF +
            "', type='" +
            req.body.type +
            "', account='" +
            req.body.account +
            "', cheque='" +
            req.body.cheque +
            "', routingCode='" +
            req.body.routingCode +
            "', receipt='" +
            req.body.receipt +
            "', bank='" +
            req.body.bank +
            "', detail='" +
            req.body.detail +
           
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
