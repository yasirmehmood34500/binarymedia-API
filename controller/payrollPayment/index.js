module.exports = {
    viewPayrollPayment: (req, res) => {
        let query =
            "SELECT id, amount, date,  paymentType_id, (SELECT name FROm payment_type WHERE id=payroll_payment.paymentType_id) AS paymentType, account, cheque, routingCode, receipt, bank, description FROM payroll_payment WHERE status =1";
      
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
            "SELECT id, amount, date,  paymentType_id, (SELECT name FROm payment_type WHERE id=payroll_payment.paymentType_id) AS paymentType, account, cheque, routingCode, receipt, bank, description FROM payroll_payment WHERE status =1 AND paymentType_id = "+req.params.id;
        
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
            "SELECT id, amount, date, paymentType_id, (SELECT name FROm payment_type WHERE id=payroll_payment.paymentType_id) AS paymentType, account, cheque, routingCode, receipt, bank, description FROM payroll_payment WHERE id=" +
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
    addPayrollPayment: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
       
        let query =
            "INSERT INTO  payroll_payment SET amount='" +
            req.body.amount +
            "', date='" +
            req.body.date +
            "', paymentType_id='" +
            req.body.paymentType_id +
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
            "UPDATE payroll_payment SET amount='" +
            req.body.amount +
            "', date='" +
            req.body.date +
            "', paymentType_id='" +
            req.body.paymentType_id +
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
