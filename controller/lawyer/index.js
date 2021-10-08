module.exports = {
    viewLawyer: (req, res) => {
        let query =
            "SELECT id, name, phone_no, mobile_no, cnic, gender, direction, tuition, bill FROM lawyer WHERE status =1";
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
    singleLawyer: (req, res) => {
        let query =
            "SELECT id, name, phone_no, mobile_no, cnic, gender, direction, tuition, bill FROM lawyer WHERE id=" +
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
    deleteLawyer: (req, res) => {
        let query =
            "UPDATE lawyer  SET status = 0 WHERE id=" +
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
    addLawyer: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        let query =
            "INSERT INTO  lawyer SET name='" +
            req.body.name +
            "', cnic='" +
            req.body.cnic +
            "', phone_no='" +
            req.body.phone_no +
            "', mobile_no='" +
            req.body.mobile_no +
            "', bill='" +
            req.body.bill +
            "', direction='" +
            req.body.direction +
            "', tuition='" +
            req.body.tuition +
            "', gender='" +
            req.body.gender +
           
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
    updateLawyer: (req, res) => {
        let query =
            "UPDATE lawyer SET name='" +
            req.body.name +
            "', cnic='" +
            req.body.cnic +
            "', phone_no='" +
            req.body.phone_no +
            "', mobile_no='" +
            req.body.mobile_no +
            "', bill='" +
            req.body.bill +
            "', direction='" +
            req.body.direction +
            "', tuition='" +
            req.body.tuition +
            "', gender='" +
            req.body.gender +
           
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
