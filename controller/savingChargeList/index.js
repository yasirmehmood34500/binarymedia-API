module.exports = {
    viewSavingChargeList: (req, res) => {
        let query =
            "SELECT id, saving_id, name, valuee, chargeType, collectedOn, paidStatus, nextPayDate FROM saving_charge_list WHERE status =1";
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
    viewSavingChargeListSavingWise: (req, res) => {
        let query =
            "SELECT id, saving_id, name, valuee, chargeType, collectedOn, paidStatus, nextPayDate FROM saving_charge_list WHERE status =1 AND saving_id=" + req.params.saving_id;
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
    viewSavingChargeListSavingWiseWithChargeType: (req, res) => {
        let query =
            "SELECT id, saving_id, name, valuee, chargeType, collectedOn, paidStatus, nextPayDate FROM saving_charge_list WHERE chargeType = '" + req.body.chargeType + "'AND status =1 AND saving_id=" + req.params.saving_id;
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
    singleSavingChargeList: (req, res) => {
        let query =
            "SELECT  id, saving_id, name, valuee, chargeType, collectedOn, paidStatus, nextPayDate FROM saving_charge_list WHERE id=" +
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
    deleteSavingChargeList: (req, res) => {
        let query =
            "UPDATE saving_charge_list  SET status = 0 WHERE id=" +
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

    paidSavingChargeListIdWise: (req, res) => {
        let query =
            "UPDATE saving_charge_list  SET paidStatus = 'Paid',  nextPayDate='" + req.body.nextPayDate + "' WHERE id=" +
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
    addSavingChargeList: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        let query =
            "INSERT INTO  saving_charge_list SET saving_id='" +
            req.body.saving_id +

            "', name='" +
            req.body.name +
            "', valuee='" +
            req.body.valuee +
            "', chargeType='" +
            req.body.chargeType +
            "', collectedOn='" +
            req.body.collectedOn +
            "', paidStatus='" +
            req.body.paidStatus +
            "', nextPayDate='" +
            req.body.nextPayDate +

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
    updateSavingChargeList: (req, res) => {
        let query =
            "UPDATE saving_charge_list SET saving_id='" +
            req.body.saving_id +
            "', name='" +
            req.body.name +
            "', valuee='" +
            req.body.valuee +
            "', chargeType='" +
            req.body.chargeType +
            "', collectedOn='" +
            req.body.collectedOn +
            "', paidStatus='" +
            req.body.paidStatus +
            "', nextPayDate='" +
            req.body.nextPayDate +

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
