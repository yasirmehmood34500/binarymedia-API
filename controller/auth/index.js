module.exports = {
    viewLogin: (req, res) => {
        let query =
            "SELECT id, fName, lName, phone, address, img, gender, email FROM login WHERE status =1";
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
    singleLogin: (req, res) => {
        let query =
            "SELECT id, fName, lName, phone, address, img, gender, email FROM login WHERE id=" +
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
    loginLogin: (req, res) => {
        let query =
            "SELECT id, fName, lName, phone, address, img, gender, email FROM login WHERE email='" +
            req.body.email +
            "' AND password='" +
            req.body.password +
            "' AND status =1";
        db.query(query, (err, result) => {
            if (err) {
                res.status(400).json({
                    success: false,
                    message: "Something is really bad happens",
                });
            } else {
                res.status(200).json({
                    success: result.length > 0 ? true : false,
                    message: result.length > 0 ? "Success" : "wrong",
                    result: result.length > 0 ? result[0] : { message: "invalid login" },
                });
            }
        });
    },
    deleteLogin: (req, res) => {
        let query =
            "UPDATE login  SET status = 0 WHERE id=" +
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
    addLogin: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        let query =
            "INSERT INTO  login SET branch_id='" +
            req.body.branch_id +
            "', fName='" +
            req.body.fName +
            "', lName='" +
            req.body.lName +
            "', gender='" +
            req.body.gender +
            "', phone='" +
            req.body.phone +
            "', img='" +
            "" +
            "', address='" +
            req.body.address +
            "', email='" +
            req.body.email +
            "', password='" +
            req.body.password +
            "', createAt='" +
            year +
            "-" +
            month +
            "-" +
            date +
            "'";

        let query1 = "SELECT * FROM login WHERE email = '" + req.body.email + "'";

        db.query(query1, (err1, result1) => {
            if (err1) {
                res.status(400).json({
                    success: false,
                    message: "Something is really bad happens",
                });
            } else {
                let checkEmail = result1.length;
                if (checkEmail > 0) {
                    res.status(200).json({
                        success: false,
                        message: "wrong",
                        result: "Email alreay use",
                    });
                } else {
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
                }
            }
        });
    },
    updateLogin: (req, res) => {
        let query =
            "UPDATE login SET fName='" +
            req.body.fName +
            "', lName='" +
            req.body.lName +
            "', gender='" +
            req.body.gender +
            "', phone='" +
            req.body.phone +
            "', img='" +
            "" +
            "', address='" +
            req.body.address +
            "', email='" +
            req.body.email +
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
    changePassword: (req, res) => {
        let query =
            "UPDATE login SET password='" +
            req.body.password +
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
