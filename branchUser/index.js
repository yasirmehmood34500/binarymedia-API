module.exports={
    viewBranchUser: (req, res) => {
        let query =
            "SELECT id,branch_id, (SELECT name FROM branch WHERE id=branch_user.branch_id) AS branch, user_id, (SELECT firstName FROM user WHERE id=branch_user.user_id) AS user, (SELECT email FROM user WHERE id=branch_user.user_id) AS email FROM  branch_user WHERE status =1";
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
    singleBranchUser: (req, res) => {
        let query =
            "SELECT  id,branch_id, (SELECT name FROM branch WHERE id=branch_user.branch_id) AS branch, user_id, (SELECT firstName FROM user WHERE id=branch_user.user_id) AS user, (SELECT email FROM user WHERE id=branch_user.user_id) AS email  FROM  branch_user WHERE id=" +
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
    deleteBranchUser: (req, res) => {
        let query =
            "UPDATE  branch_user SET status = 0 WHERE id=" +
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
    addBranchUser: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        let query =
            "INSERT INTO  branch_user SET branch_id='" +
            req.body.branch_id +
            "', user_id='" +
            req.body.user_id +
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
    updateBranchUser: (req, res) => {
        let query =
            "UPDATE  branch_user SET branch_id='" +
            req.body.branch_id +
            "', user_id='" +
            req.body.user_id +
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
}