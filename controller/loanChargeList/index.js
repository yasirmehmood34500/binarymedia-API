module.exports = {
    viewLoanChargeList: (req, res) => {
        let query =
            "SELECT id, loan_id, name, chargeType, valuee, payableAmount, collectedOn, action FROM loan_charge_list WHERE status =1";
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

    viewLoanChargeListLoanWise: (req, res) => {
        let query =
            "SELECT id, loan_id, name, chargeType, valuee, payableAmount, collectedOn, action FROM loan_charge_list WHERE status =1 AND loan_id ="+req.params.loan_id+" ORDER BY chargeType ASC, collectedOn ASC";
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

    viewLoanChargeListLoanWiseWithChargeType: (req, res) => {
        let query =
            "SELECT id, loan_id, name, chargeType, valuee, payableAmount, collectedOn, action FROM loan_charge_list WHERE chargeType='"+req.body.chargeType+"' AND  status =1 AND loan_id ="+req.params.loan_id+" ORDER BY chargeType ASC, collectedOn ASC";
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

    singleLoanChargeList: (req, res) => {
        let query =
            "SELECTid, loan_id, name, chargeType, valuee, payableAmount, collectedOn, action FROM loan_charge_list WHERE id=" +
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
    
    loanChargeListWaiveCharge: (req, res) => {
        let query =
            "UPDATE loan_charge_list  SET action = 2 WHERE id=" +
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
                    result: "Successfully Deleted",
                });
            }
        });
    },
    deleteLoanChargeList: (req, res) => {
        let query =
            "UPDATE loan_charge_list  SET status = 0 WHERE id=" +
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
    addLoanChargeList: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        let query =
            "INSERT INTO  loan_charge_list SET loan_id='" +
            req.body.loan_id +
            "', name='" +
            req.body.name +
            "', chargeType='" +
            req.body.chargeType +
            "', valuee='" +
            req.body.valuee +
            "', payableAmount='" +
            req.body.payableAmount +
            "', collectedOn='" +
            req.body.collectedOn +
            "', action='" +
            req.body.action +
           
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
    updateLoanChargeList: (req, res) => {
        let query =
            "UPDATE loan_charge_list SET loan_id='" +
            req.body.loan_id +
            "', name='" +
            req.body.name +
            "', chargeType='" +
            req.body.chargeType +
            "', valuee='" +
            req.body.valuee +
            "', payableAmount='" +
            req.body.payableAmount +
            "', collectedOn='" +
            req.body.collectedOn +
            "', action='" +
            req.body.action +
           
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
