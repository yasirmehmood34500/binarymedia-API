module.exports = {
    viewLoanChargeList: (req, res) => {
        let query =
            "SELECT id, loan_id, loan_charges_id, waive_charge_id, amount FROM loan_charge_list WHERE status =1";
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
            "SELECT loan_charge_list.id, loan_charge_list.loan_id, loan_charge_list.loan_charges_id, loan_charges.name, loan_charges.chargeType, loan_charges.chargeOption,  loan_charge_list.waive_charge_id, loan_charge_list.amount FROM loan_charge_list LEFT JOIN loan_charges  ON loan_charge_list.loan_charges_id=loan_charges.id WHERE loan_charge_list.status =1 AND loan_charge_list.loan_id ="+req.params.loan_id;
        
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
            "SELECT id, loan_id, loan_charges_id, waive_charge_id, amount FROM loan_charge_list WHERE id=" +
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
            "', loan_charges_id='" +
            req.body.loan_charges_id +
            "', waive_charge_id='" +
            req.body.waive_charge_id +
            "', amount='" +
            req.body.amount +
           
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
            "', loan_charges_id='" +
            req.body.loan_charges_id +
            "', waive_charge_id='" +
            req.body.waive_charge_id +
            "', amount='" +
            req.body.amount +
           
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
