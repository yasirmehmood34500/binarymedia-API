module.exports = {
    viewPayrollPayment: (req, res) => {
        let query =
            "SELECT id, payroll_id,  paymentType_id, (SELECT name FROM payment_type WHERE id=payroll_payment.paymentType_id) AS paymentType, name, type, amountType, amount, debit, credit, date,  account, cheque, routingCode, receipt, bank, description FROM payroll_payment WHERE status =1";

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

    payrollPaymentPayrollWise: (req, res) => {
        let query =
            "SELECT id, payroll_id,  paymentType_id, (SELECT name FROM payment_type WHERE id=payroll_payment.paymentType_id) AS paymentType, name, type, amountType, amount, debit, credit, date,  account, cheque, routingCode, receipt, bank, description FROM payroll_payment WHERE status =1 AND payroll_id = " + req.params.id;

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
    singlePayrollPayment: (req, res) => {
        let query =
            "SELECT id, payroll_id,  paymentType_id, (SELECT name FROM payment_type WHERE id=payroll_payment.paymentType_id) AS paymentType, name, type, amountType, amount, debit, credit, date,  account, cheque, routingCode, receipt, bank, description FROM payroll_payment WHERE id=" +
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
    deletePayrollPayment: (req, res) => {
        let query =
            "UPDATE payroll_payment  SET status = 0 WHERE id=" +
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
    deletePayrollPaymentPayrollWise: (req, res) => {
        let query =
            "UPDATE payroll_payment  SET status = 0 WHERE payroll_id=" +
            req.params.payrollId +
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
    addPayrollPayment: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();

        let query =
            "INSERT INTO  payroll_payment SET payroll_id='" +
            req.body.payroll_id +
            "', paymentType_id='" +
            req.body.paymentType_id +
            "', name='" +
            req.body.name +
            "', type='" +
            req.body.type +
            "', amountType='" +
            req.body.amountType +
            "', amount='" +
            req.body.amount +
            "', debit='" +
            req.body.debit +
            "', credit='" +
            req.body.credit +
            "', date='" +
            req.body.date +
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
    updatePayrollPayment: (req, res) => {
        let query =
            "UPDATE payroll_payment SET payroll_id='" +
            req.body.payroll_id +
            "', paymentType_id='" +
            req.body.paymentType_id +
            "', name='" +
            req.body.name +
            "', type='" +
            req.body.type +
            "', amountType='" +
            req.body.amountType +
            "', amount='" +
            req.body.amount +
            "', debit='" +
            req.body.debit +
            "', credit='" +
            req.body.credit +
            "', date='" +
            req.body.date +
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
