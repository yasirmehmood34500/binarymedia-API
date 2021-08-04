module.exports = {
    viewPayrollTemplate: (req, res) => {
        let query =
            "SELECT id, name, workDuration, durationUnit,amountPerDuration, items,description FROM payroll_templates WHERE status = 1";
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
    singlePayrollTemplate: (req, res) => {
        let query =
            "SELECT   id, name, workDuration, durationUnit,amountPerDuration, items,description  FROM  payroll_templates WHERE id=" +
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
    deletePayrollTemplate: (req, res) => {
        let query =
            "UPDATE  payroll_templates SET status = 0 WHERE id=" +
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
    addPayrollTemplate: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        let query =
            "INSERT INTO  payroll_templates SET name='" +
            req.body.name +
            "', workDuration='" +
            req.body.workDuration +
            "', durationUnit= '" +
            req.body.durationUnit +
            "', amountPerDuration='" +
            req.body.amountPerDuration +
            "', items='" +
            req.body.items +
            "', description= '" +
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
    updatePayrollTemplate: (req, res) => {
        let query =
            "UPDATE  payroll_templates SET name='" +
            req.body.name +
            "', workDuration='" +
            req.body.workDuration +
            "', durationUnit= '" +
            req.body.durationUnit +
            "', amountPerDuration='" +
            req.body.amountPerDuration +
            "', items='" +
            req.body.items +
            "', description= '" +
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
