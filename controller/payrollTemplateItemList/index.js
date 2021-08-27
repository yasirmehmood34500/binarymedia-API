module.exports = {
    viewPayrollTemplateItemList: (req, res) => {
        let query =
            "SELECT id, payroll_items_id, payroll_templates_id FROM payroll_templates_items_list WHERE status =1";
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
    viewPayrollTemplateItemListPayrollTemplateWise: (req, res) => {
        let query =
            "SELECT payroll_items.id, payroll_items.name, payroll_items.type, payroll_items.amountType, payroll_items.amount FROM payroll_templates_items_list LEFT JOIN payroll_items ON payroll_templates_items_list.payroll_items_id = payroll_items.id WHERE payroll_templates_items_list.status =1 AND payroll_templates_items_list.payroll_templates_id ="+req.params.payrollTemplateId;
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
    singlePayrollTemplateItemList: (req, res) => {
        let query =
            "SELECT id, payroll_items_id, payroll_templates_id FROM payroll_templates_items_list WHERE id=" +
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
    deletePayrollTemplateItemList: (req, res) => {
        let query =
            "UPDATE payroll_templates_items_list  SET status = 0 WHERE id=" +
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
    addPayrollTemplateItemList: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        let query =
            "INSERT INTO  payroll_templates_items_list SET payroll_items_id='" +
            req.body.payroll_items_id +
            "', payroll_templates_id='" +
            req.body.payroll_templates_id +
           
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
    updatePayrollTemplateItemList: (req, res) => {
        let query =
            "UPDATE payroll_templates_items_list SET payroll_items_id='" +
            req.body.payroll_items_id +
            "', payroll_templates_id='" +
            req.body.payroll_templates_id +
           
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
