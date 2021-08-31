module.exports = {
    viewSavingTransactionList: (req, res) => {
        let query =
            "SELECT id, saving_id, payment_type_id, (SELECT name FROM payment_type WHERE id=saving_transaction_list.payment_type_id) AS paymentType, submittedOn, transactionType, debit, credit, account, cheque, routingCode, receipt, bank, description, createAt FROM saving_transaction_list WHERE status =1";
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
    viewSavingTransactionListSavingWise: (req, res) => {
        let query =
            "SELECT id, saving_id, payment_type_id, (SELECT name FROM payment_type WHERE id=saving_transaction_list.payment_type_id) AS paymentType, submittedOn, transactionType, debit, credit, account, cheque, routingCode, receipt, bank, description, createAt FROM saving_transaction_list WHERE status =1 AND saving_id=" +
            req.params.saving_id;
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
    singleSavingTransactionList: (req, res) => {
        let query =
            "SELECT id, saving_id, payment_type_id, (SELECT name FROM payment_type WHERE id=saving_transaction_list.payment_type_id) AS paymentType, submittedOn, transactionType, debit, credit, account, cheque, routingCode, receipt, bank, description, createAt FROM saving_transaction_list WHERE id=" +
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
    calculateSavingTransactionList: (req, res) => {
        let saving_id = req.params.saving_id;
        let query =
            "SELECT (SELECT SUM(credit-debit) FROM saving_transaction_list WHERE saving_id=" + saving_id + " AND transactionType='Deposit') AS totalDeposit, (SELECT SUM(debit) FROM saving_transaction_list WHERE saving_id=" + saving_id + " AND transactionType='Withdraw') AS totalWithdraw  FROM saving_transaction_list WHERE saving_id=" +
            saving_id +
            " AND status =1";
        db.query(query, (err, result) => {
            if (err) {
                res.status(400).json({
                    success: false,
                    message: "Something is really bad happens",
                });
            } else {
                let data = {};
                if (result.length > 0) {
                     data = {
                        totalDeposit: result[0].totalDeposit > 0 || result[0].totalDeposit < 0 ? result[0].totalDeposit : 0,
                        totalWithdraw:
                            result[0].totalWithdraw > 0 ||  result[0].totalWithdraw < 0 ? result[0].totalWithdraw : 0,
                    };
                } else {
                     data = {
                        totalDeposit: 0,
                        totalWithdraw: 0,
                    };
                }

                res.status(200).json({
                    success: true,
                    message: "Success",
                    result: data,
                });
            }
        });
    },
    deleteSavingTransactionList: (req, res) => {
        let query =
            "UPDATE saving_transaction_list  SET status = 0 WHERE id=" +
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

    reverseSavingTransactionList: (req, res) => {
        let query =
            "UPDATE saving_transaction_list  SET credit = '" + req.body.credit + "', debit='" + req.body.debit + "' WHERE id=" +
            req.body.id +
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
                    result: "Successfully Update",
                });
            }
        });
    },

    addSavingTransactionList: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        let query =
            "INSERT INTO  saving_transaction_list SET saving_id='" +
            req.body.saving_id +
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
            "', description='" +
            req.body.description +
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
    updateSavingTransactionList: (req, res) => {
        let query =
            "UPDATE saving_transaction_list SET saving_id='" +
            req.body.saving_id +
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
            "', description='" +
            req.body.description +
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
