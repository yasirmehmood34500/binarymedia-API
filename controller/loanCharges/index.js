module.exports = {
    viewLoanCharges: (req, res) => {
        let query =
            "SELECT id, name, chargeType, amount, chargeOption, currency_id, penalty, override, active FROM loan_charges WHERE status =1";
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
    singleLoanCharges: (req, res) => {
        let query =
            "SELECT  id, name, chargeType, amount, chargeOption, currency_id, penalty, override, active FROM loan_charges WHERE id=" +
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
    deleteLoanCharges: (req, res) => {
        let query =
            "UPDATE loan_charges  SET status = 0 WHERE id=" +
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
    addLoanCharges: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        let query =
            "INSERT INTO  loan_charges SET name='" +
            req.body.name +
            "', chargeType='" +
            req.body.chargeType +
            "', amount='" +
            req.body.amount +
            "', chargeOption='" +
            req.body.chargeOption +
            "', currency_id='" +
            req.body.currency_id +
            "', penalty='" +
            req.body.penalty +
            "', override='" +
            req.body.override +
            "', active='" +
            req.body.active +

           
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
    updateLoanCharges: (req, res) => {
        let query =
            "UPDATE loan_charges SET name='" +
            req.body.name +
            "', chargeType='" +
            req.body.chargeType +
            "', amount='" +
            req.body.amount +
            "', chargeOption='" +
            req.body.chargeOption +
            "', currency_id='" +
            req.body.currency_id +
            "', penalty='" +
            req.body.penalty +
            "', override='" +
            req.body.override +
            "', active='" +
            req.body.active +
           
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
