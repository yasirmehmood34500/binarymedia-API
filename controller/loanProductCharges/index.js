module.exports = {
    viewLoanProductCharges: (req, res) => {
        let query =
            "SELECT id, loan_charges_id, loan_products_id FROM  loan_product_charges WHERE status =1";
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

    viewLoanProductChargesProductWise: (req, res) => {
        let query =
            "SELECT id, loan_charges_id, (SELECT name FROM loan_charges WHERE id =loan_product_charges.loan_charges_id) AS chargeName, loan_products_id, (SELECT currency_id FROM loan_products WHERE id =loan_product_charges.loan_products_id) AS currency_id FROM  loan_product_charges WHERE status =1 AND loan_products_id ="+req.params.loan_products_id;
            
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
    
    viewLoanProductChargesLoanWise: (req, res) => {
        let query =
            "SELECT * FROM loan_charges WHERE id IN (SELECT loan_charges_id FROM loan_product_charges WHERE loan_products_id=(SELECT loanProduct_id FROM loan WHERE id="+req.params.loan_id+"))";
            
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
    singleLoanProductCharges: (req, res) => {
        let query =
            "SELECT id, loan_charges_id, loan_products_id FROM  loan_product_charges WHERE id=" +
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
    deleteLoanProductCharges: (req, res) => {
        let query =
            "UPDATE  loan_product_charges  SET status = 0 WHERE id=" +
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
    addLoanProductCharges: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        let query =
            "INSERT INTO   loan_product_charges SET loan_charges_id='" +
            req.body.loan_charges_id +
            "', loan_products_id='" +
            req.body.loan_products_id +
           
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
    updateLoanProductCharges: (req, res) => {
        let query =
            "UPDATE  loan_product_charges SET loan_charges_id='" +
            req.body.loan_charges_id +
            "', loan_products_id='" +
            req.body.loan_products_id +
           
           
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
