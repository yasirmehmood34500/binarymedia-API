module.exports = {
    // chart of account
    viewChartOfAccount: (req, res) => {
        let query =
            "SELECT id, accountType, parent, name, glCode, activeOrNot, mannualEntryStatus, notes FROM chart_of_accounts WHERE status =1";
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
    singleChartOfAccount: (req, res) => {
        let query =
            "SELECT id, accountType, parent, name, glCode, activeOrNot, mannualEntryStatus, notes FROM chart_of_accounts WHERE id=" +
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
    deleteChartOfAccount: (req, res) => {
        let query =
            "UPDATE chart_of_accounts SET status = 0 WHERE id=" +
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
    addChartOfAccount: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        let query =
            "INSERT INTO chart_of_accounts(accountType, parent, name, glCode, activeOrNot, mannualEntryStatus, notes, createAt) VALUES('" +
            req.body.accountType +
            "', '" +
            req.body.parent +
            "', '" +
            req.body.name +
            "', '" +
            req.body.glCode +
            "','" +
            req.body.activeOrNot +
            "','" +
            req.body.mannualEntryStatus +
            "','" +
            req.body.notes +
            "', '" +
            year +
            "-" +
            month +
            "-" +
            date +
            "')";
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
    updateChartOfAccount: (req, res) => {
        let query =
            "UPDATE chart_of_accounts SET accountType='" +
            req.body.accountType +
            "', parent='" +
            req.body.parent +
            "', name= '" +
            req.body.name +
            "', glCode='" +
            req.body.glCode +
            "', activeOrNot='" +
            req.body.activeOrNot +
            "', mannualEntryStatus='" +
            req.body.mannualEntryStatus +
            "', notes='" +
            req.body.notes +
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

    // Journal Entries

    viewJournalEntries: (req, res) => {
        let query =
            "SELECT id, (SELECT name FROM branch WHERE id=journal_entries.branch_id) AS  branch, country_id, (SELECT name FROM country WHERE id=journal_entries.country_id) AS country , user_id, (SELECT firstName FROM user WHERE id=journal_entries.user_id) AS user , amount,debit,credit,date,reference,paymentType_id, (SELECT name FROM payment_type WHERE id=journal_entries.paymentType_id) AS paymentType , accountNo,chequeNo,routingCode,receiptNo,bankNo,notes FROM journal_entries WHERE status =1";
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
    singleJournalEntries: (req, res) => {
        let query =
            "SELECT id, (SELECT name FROM branch WHERE id=journal_entries.branch_id) AS  branch,country_id, (SELECT name FROM country WHERE id=journal_entries.country_id) AS country ,user_id, (SELECT firstName FROM user WHERE id=journal_entries.user_id) AS user , amount,debit,credit,date,reference,paymentType_id, (SELECT name FROM payment_type WHERE id=journal_entries.paymentType_id) AS paymentType , accountNo,chequeNo,routingCode,receiptNo,bankNo,notes FROM journal_entries WHERE id=" +
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
    deleteJournalEntries: (req, res) => {
        let query =
            "UPDATE journal_entries SET status = 0 WHERE id=" +
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
    addJournalEntries: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        let query =
            "INSERT INTO journal_entries SET branch_id='" +
            req.body.branch_id +
            "', country_id='" +
            req.body.country_id +
            "', user_id='" +
            req.body.user_id +
            "', amount= '" +
            req.body.amount +
            "', debit='" +
            req.body.debit +
            "', credit='" +
            req.body.credit +
            "', date='" +
            req.body.date +
            "', reference='" +
            req.body.reference +
            "', paymentType_id='" +
            req.body.paymentType_id +
            "', accountNo= '" +
            req.body.accountNo +
            "', chequeNo='" +
            req.body.chequeNo +
            "', routingCode='" +
            req.body.routingCode +
            "', receiptNo='" +
            req.body.receiptNo +
            "', bankNo='" +
            req.body.bankNo +
            "', notes='" +
            req.body.notes +
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
    updateJournalEntries: (req, res) => {
        let query =
            "UPDATE journal_entries SET branch_id='" +
            req.body.branch_id +
            "', country_id='" +
            req.body.country_id +
            "', user_id='" +
            req.body.user_id +
            "', amount= '" +
            req.body.amount +
            "', debit='" +
            req.body.debit +
            "', credit='" +
            req.body.credit +
            "', date='" +
            req.body.date +
            "', reference='" +
            req.body.reference +
            "', paymentType_id='" +
            req.body.paymentType_id +
            "', accountNo= '" +
            req.body.accountNo +
            "', chequeNo='" +
            req.body.chequeNo +
            "', routingCode='" +
            req.body.routingCode +
            "', receiptNo='" +
            req.body.receiptNo +
            "', bankNo='" +
            req.body.bankNo +
            "', notes='" +
            req.body.notes +
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
