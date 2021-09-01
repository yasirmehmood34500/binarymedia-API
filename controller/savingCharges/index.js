module.exports = {
    viewSavingCharges: (req, res) => {
        let query =
            "SELECT id, name, chargeType, amount, chargeOption, currency_id, override, active FROM saving_charges WHERE status =1";
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
    singleSavingCharges: (req, res) => {
        let query =
            "SELECT  id,name,  chargeType, amount, chargeOption, currency_id,  override, active FROM saving_charges WHERE id=" +
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
    viewSavingChargesCurrencyWise: (req, res) => {
        let query =
            "SELECT id, name, chargeType, amount, chargeOption, currency_id, (SELECT name FROM currency WHERE id=saving_charges.currency_id) AS currency,  override, active FROM saving_charges WHERE status =1 AND currency_id ="+req.params.id;
        
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
    deleteSavingCharges: (req, res) => {
        let query =
            "UPDATE saving_charges  SET status = 0 WHERE id=" +
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
    addSavingCharges: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        let query =
            "INSERT INTO  saving_charges SET name='" +
            req.body.name +
            "', chargeType='" +
            req.body.chargeType +
            "', amount='" +
            req.body.amount +
            "', chargeOption='" +
            req.body.chargeOption +
            "', currency_id='" +
            req.body.currency_id +
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
    updateSavingCharges: (req, res) => {
        let query =
            "UPDATE saving_charges SET name='" +
            req.body.name +
            "', chargeType='" +
            req.body.chargeType +
            "', amount='" +
            req.body.amount +
            "', chargeOption='" +
            req.body.chargeOption +
            "', currency_id='" +
            req.body.currency_id +
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
