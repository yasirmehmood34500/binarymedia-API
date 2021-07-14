const db = require("../db");

module.exports = {
    viewRole: (req, res) => {
        let query = "SELECT id, name FROM role WHERE status = 1";
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
    singleRole: (req, res) => {
        let query =
            "SELECT id, name  FROM role WHERE id=" + req.params.id + " AND status =1";
        db.query(query, (err, result) => {
            if (err) {
                res.status(400).json({
                    success: false,
                    message: "Something is really bad happens",
                });
            } else {
                let roleId = result[0].id;
                let query2 = "SELECT (SELECT routeName FROM pages WHERE id=role_pages.pages_id) AS routeName FROM role_pages WHERE role_id=" + roleId + " AND status =1"
                db.query(query2, (err2, result2) => {

                    if (err2) {
                        res.status(400).json({
                            success: false,
                            message: "Something is really bad happens",
                        });
                    } else {
                        let obj = new Object({
                            id: result[0].id,
                            name: result[0].name,
                            assignRoutes: result2
                        })
                        res.status(200).json({
                            success: true,
                            message: "Success",
                            result: obj,
                        });
                    }


                })

            }
        });
    },
    deleteRole: (req, res) => {
        let query =
            "UPDATE  role SET status = 0 WHERE id=" +
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
    addRole: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        let comDate = year + "-" + month + "-" + date;
        let query =
            "INSERT INTO  role SET name='" +
            req.body.name +
            "', createAt='" +
            comDate +
            "'";
        db.query(query, (err, result) => {
            if (err) {
                res.status(400).json({
                    success: false,
                    message: "Something is really bad happens",
                });
            } else {
                let query2 =
                    "INSERT INTO role_pages(role_id,pages_id,createAt) VALUES ";
                var roleId = result.insertId;
                let pageIds = req.body.pageIds;
                let comp = "";
                pageIds.forEach((e) => {
                    comp += "('" + roleId + "', '" + e + "','" + comDate + "') , ";
                });
                let comQuery = query2 + comp.slice(0, -2);
                db.query(comQuery, (err1, result1) => {
                    if (err1) {
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
        });
    },
    updateRole: (req, res) => {
        let query =
            "UPDATE  role SET name='" + req.body.name + "' WHERE id=" + req.body.id;
        db.query(query, (err, result) => {
            if (err) {
                res.status(400).json({
                    success: false,
                    message: "Something is really bad happens",
                });
            } else {
                let query2 = "UPDATE role_pages SET status=0 WHERE role_id=" + req.body.id
                db.query(query2, (err2, result2) => {
                    if (err2) {
                        res.status(400).json({
                            success: false,
                            message: "Something is really bad happens",
                        });
                    } else {
                        let query3 =
                            "INSERT INTO role_pages(role_id,pages_id,createAt) VALUES ";
                        var roleId = result.insertId;
                        let pageIds = req.body.pageIds;
                        let comp = "";
                        let ts = Date.now();
                        let date_ob = new Date(ts);
                        let date = date_ob.getDate();
                        let month = date_ob.getMonth() + 1;
                        let year = date_ob.getFullYear();
                        let comDate = year + "-" + month + "-" + date;
                        pageIds.forEach((e) => {
                            comp += "('" + req.body.id + "', '" + e + "','" + comDate + "') , ";
                        });
                        let comQuery = query3 + comp.slice(0, -2);
                        db.query(comQuery, (err1, result1) => {
                            if (err1) {
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
                })

            }
        });
    },
};
