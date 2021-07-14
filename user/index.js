module.exports = {
    viewUser: (req, res) => {
        let query =
            "SELECT id, firstName, lastName,gender,role_id, (SELECT name FROM role WHERE id=user.role_id) AS role ,email,address,notes FROM user WHERE status = 1";
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
    singleUser: (req, res) => {
        let query =
            "SELECT id, firstName, lastName,gender,role_id,(SELECT name FROM role WHERE id=user.role_id) AS role ,email,address,notes FROM user WHERE id=" +
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
    deleteUser: (req, res) => {
        let query =
            "UPDATE  user SET status = 0 WHERE id=" +
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
    addUser: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        let query =
            "INSERT INTO  user SET firstName='" +
            req.body.firstName +
            "', lastName='" +
            req.body.lastName +
            "', gender= '" +
            req.body.gender +
            "', role_id='" +
            req.body.role_id +
            "', email= '" +
            req.body.email +
            "', password='" +
            req.body.password +
            "', address= '" +
            req.body.address +
            "', notes='" +
            req.body.notes +
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
    updateUser: (req, res) => {
        let query =
            "UPDATE  user SET firstName='" +
            req.body.firstName +
            "', lastName='" +
            req.body.lastName +
            "', gender= '" +
            req.body.gender +
            "', role_id='" +
            req.body.role_id +
            "', email= '" +
            req.body.email +
            "', password='" +
            req.body.password +
            "', address= '" +
            req.body.address +
            "', notes='" +
            req.body.notes +
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
