module.exports = {
    viewGeneralSetting: (req, res) => {
        let query =
            "SELECT id, user_id, (SELECT firstName FROM user WHERE id=general_setting.user_id) AS user, companyName, companyAddress, country_id, (SELECT name FROM country WHERE id = general_setting.country_id) AS companyCountry, time_zone_id, (SELECT name FROM time_zone WHERE id = general_setting.time_zone_id) AS timeZone, companyEmail, companyLogo FROM general_setting WHERE status =1";
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
    singleGeneralSetting: (req, res) => {
        let query =
            "SELECT id, user_id, (SELECT firstName FROM user WHERE id=general_setting.user_id) AS user, companyName, companyAddress, country_id, (SELECT name FROM country WHERE id = general_setting.country_id) AS companyCountry, time_zone_id, (SELECT name FROM time_zone WHERE id = general_setting.time_zone_id) AS timeZone, companyEmail, companyLogo FROM general_setting WHERE id=" +
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
    singleGeneralSettingUser: (req, res) => {
        let query =
            "SELECT id, user_id, (SELECT firstName FROM user WHERE id=general_setting.user_id) AS user, companyName, companyAddress, country_id, (SELECT name FROM country WHERE id = general_setting.country_id) AS companyCountry, time_zone_id, (SELECT name FROM time_zone WHERE id = general_setting.time_zone_id) AS timeZone, companyEmail, companyLogo FROM general_setting WHERE user_id=" +
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
    deleteGeneralSetting: (req, res) => {
        let query =
            "UPDATE general_setting  SET status = 0 WHERE id=" +
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
    addGeneralSetting: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        let query =
            "INSERT INTO  general_setting SET user_id='" +
            req.body.user_id +
            "', companyName='" +
            req.body.companyName +
            "', companyAddress='" +
            req.body.companyAddress +
            "', country_id='" +
            req.body.country_id +
            "', companyEmail='" +
            req.body.companyEmail +
            "', companyLogo='" +
            req.body.companyLogo +
            "', time_zone_id='" +
            req.body.time_zone_id +
           
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
    updateGeneralSetting: (req, res) => {
        let query =
            "UPDATE general_setting SET user_id='" +
            req.body.user_id +
            "', companyName='" +
            req.body.companyName +
            "', companyAddress='" +
            req.body.companyAddress +
            "', country_id='" +
            req.body.country_id +
            "', companyEmail='" +
            req.body.companyEmail +
            "', companyLogo='" +
            req.body.companyLogo +
            "', time_zone_id='" +
            req.body.time_zone_id +
           
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
    updateGeneralSettingUser: (req, res) => {
        let query =
            "UPDATE general_setting SET time_zone_id='" +
            req.body.time_zone_id +
            "', companyName='" +
            req.body.companyName +
            "', companyAddress='" +
            req.body.companyAddress +
            "', country_id='" +
            req.body.country_id +
            "', companyEmail='" +
            req.body.companyEmail +
            "', companyLogo='" +
            req.body.companyLogo +
            
           
            "' WHERE user_id=" +
            req.body.user_id;
            console.log(query);
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
