module.exports = {
    viewClient: (req, res) => {
        let query =
            "SELECT id, branch_id, (SELECT name FROM branch WHERE id=client.branch_id) AS branch_name, external_Id, title_id, (SELECT name FROM title WHERE id=client.title_id) AS title, firstName, lastName, gender, maritalStatus, mobile, country_id, (SELECT name FROM country WHERE id=client.country_id) AS country_name, dateOfBirth, user_id, (SELECT firstName FROM user WHERE id=client.user_id) AS user_name, email, professions_id, (SELECT name FROM professions WHERE id=client.professions_id) AS professions, client_type_id, (SELECT name FROM client_type WHERE id=client.client_type_id) AS client_type, photo, address, notes, submittedOn FROM client WHERE status = 1";
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
    singleClient: (req, res) => {
        let query =
            "SELECT  id, branch_id, (SELECT name FROM branch WHERE id=client.branch_id) AS branch_name, external_Id, title_id, (SELECT name FROM title WHERE id=client.title_id) AS title, firstName, lastName, gender, maritalStatus, mobile, country_id, (SELECT name FROM country WHERE id=client.country_id) AS country_name, dateOfBirth, user_id, (SELECT firstName FROM user WHERE id=client.user_id) AS user_name, email, professions_id, (SELECT name FROM professions WHERE id=client.professions_id) AS professions, client_type_id, (SELECT name FROM client_type WHERE id=client.client_type_id) AS client_type, photo, address, notes, submittedOn  FROM  client WHERE id=" +
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
    deleteClient: (req, res) => {
        let query =
            "UPDATE  client SET status = 0 WHERE id=" +
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
    addClient: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        let query =
            "INSERT INTO  client SET branch_id='" +
            req.body.branch_id +
            "', external_Id='" +
            req.body.external_Id +
            "', title_id= '" +
            req.body.title_id +
            "', firstName='" +
            req.body.firstName +
            "', lastName='" +
            req.body.lastName +
            "', gender= '" +
            req.body.gender +
            "', maritalStatus='" +
            req.body.maritalStatus +
            "', mobile='" +
            req.body.mobile +
            "', country_id= '" +
            req.body.country_id +
            "', dateOfBirth='" +
            req.body.dateOfBirth +
            "', user_id='" +
            req.body.user_id +
            "', email= '" +
            req.body.email +
            "', professions_id='" +
            req.body.professions_id +
            "', client_type_id='" +
            req.body.client_type_id +
            "', photo= '" +
            req.body.photo +
            "', address='" +
            req.body.address +
            "', notes='" +
            req.body.notes +
            "', submittedOn= '" +
            req.body.submittedOn +
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
                    insertedId: result.insertId
                });
            }
        });
    },
    updateClient: (req, res) => {
        let query =
            "UPDATE  client SET branch_id='" +
            req.body.branch_id +
            "', external_Id='" +
            req.body.external_Id +
            "', title_id= '" +
            req.body.title_id +
            "', firstName='" +
            req.body.firstName +
            "', lastName='" +
            req.body.lastName +
            "', gender= '" +
            req.body.gender +
            "', maritalStatus='" +
            req.body.maritalStatus +
            "', mobile='" +
            req.body.mobile +
            "', country_id= '" +
            req.body.country_id +
            "', dateOfBirth='" +
            req.body.dateOfBirth +
            "', user_id='" +
            req.body.user_id +
            "', email= '" +
            req.body.email +
            "', professions_id='" +
            req.body.professions_id +
            "', client_type_id='" +
            req.body.client_type_id +
            "', photo= '" +
            req.body.photo +
            "', address='" +
            req.body.address +
            "', notes='" +
            req.body.notes +
            "', submittedOn= '" +
            req.body.submittedOn +
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
