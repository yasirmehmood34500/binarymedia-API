module.exports = {
    viewLoanCollateralList: (req, res) => {
        let query =
            "SELECT id, loan_id, collateral_type_id, (SELECT name FROM collateral_type WHERE id=loan_collateral_list.collateral_type_id) AS collateral_type, valuee, file_name, detail FROM loan_collateral_list WHERE status =1";
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
    
    viewLoanCollateralListLoanWise: (req, res) => {
        let query =
            "SELECT id, loan_id, collateral_type_id, (SELECT name FROM collateral_type WHERE id=loan_collateral_list.collateral_type_id) AS collateral_type, valuee, file_name, detail FROM loan_collateral_list WHERE status =1 AND loan_id="+req.params.loan_id;
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
    singleLoanCollateralList: (req, res) => {
        let query =
            "SELECT id, loan_id, collateral_type_id, (SELECT name FROM collateral_type WHERE id=loan_collateral_list.collateral_type_id) AS collateral_type, valuee, file_name, detail FROM loan_collateral_list WHERE id=" +
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
    deleteLoanCollateralList: (req, res) => {
        let query =
            "UPDATE loan_collateral_list  SET status = 0 WHERE id=" +
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
    addLoanCollateralList: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        let query =
            "INSERT INTO  loan_collateral_list SET loan_id='" +
            req.body.loan_id +
            "', collateral_type_id='" +
            req.body.collateral_type_id +
            "', valuee='" +
            req.body.valuee +
            "', file_name='" +
            req.body.file_name +
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
    updateLoanCollateralList: (req, res) => {
        let query =
            "UPDATE loan_collateral_list SET loan_id='" +
            req.body.loan_id +
            "', collateral_type_id='" +
            req.body.collateral_type_id +
            "', valuee='" +
            req.body.valuee +
            "', file_name='" +
            req.body.file_name +
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
