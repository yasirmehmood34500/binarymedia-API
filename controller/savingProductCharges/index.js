module.exports = {
    viewSavingProductCharges: (req, res) => {
        let query =
            "SELECT id, saving_charges_id, saving_products_id FROM  saving_product_charges WHERE status =1";
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

    viewSavingProductChargesProductWise: (req, res) => {
        let query =
            "SELECT id, saving_charges_id, saving_products_id, (SELECT currency_id FROM saving_products WHERE id =saving_product_charges.saving_products_id) AS currency_id FROM  saving_product_charges WHERE status =1 AND saving_products_id ="+req.params.saving_products_id;
            
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
    
    viewSavingProductChargesSavingWise: (req, res) => {
        let query =
            "SELECT * FROM saving_charges WHERE id IN (SELECT saving_charges_id FROM saving_product_charges WHERE saving_products_id=(SELECT savingProduct_id FROM saving WHERE id="+req.params.saving_id+"))";
            
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
    singleSavingProductCharges: (req, res) => {
        let query =
            "SELECT id, saving_charges_id, saving_products_id FROM  saving_product_charges WHERE id=" +
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
    deleteSavingProductCharges: (req, res) => {
        let query =
            "UPDATE  saving_product_charges  SET status = 0 WHERE id=" +
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
    addSavingProductCharges: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        let query =
            "INSERT INTO   saving_product_charges SET saving_charges_id='" +
            req.body.saving_charges_id +
            "', saving_products_id='" +
            req.body.saving_products_id +
           
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
    updateSavingProductCharges: (req, res) => {
        let query =
            "UPDATE  saving_product_charges SET saving_charges_id='" +
            req.body.saving_charges_id +
            "', saving_products_id='" +
            req.body.saving_products_id +
           
           
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
