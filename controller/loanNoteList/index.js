module.exports = {
    viewLoanNoteList: (req, res) => {
        let query =
            "SELECT id,loan_id,user_id, (SELECT firstName FROM user WHERE id=loan_note_list.user_id) AS user, detail FROM loan_note_list WHERE status =1";
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
                    result: result,
                });
            }
        });
    },
    viewLoanNoteListLoanWise: (req, res) => {
        let query =
            "SELECT id,loan_id,user_id, (SELECT firstName FROM user WHERE id=loan_note_list.user_id) AS user, detail FROM loan_note_list WHERE status =1 AND loan_id ="+req.params.loan_id;
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
    singleLoanNoteList: (req, res) => {
        let query =
            "SELECT id,loan_id,user_id, (SELECT firstName FROM user WHERE id=loan_note_list.user_id) AS user, detail FROM loan_note_list WHERE id=" +
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
    deleteLoanNoteList: (req, res) => {
        let query =
            "UPDATE loan_note_list  SET status = 0 WHERE id=" +
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
    addLoanNoteList: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        let query =
            "INSERT INTO  loan_note_list SET loan_id='" +
            req.body.loan_id +
            "', user_id='" +
            req.body.user_id +
            "', detail='" +
            req.body.detail +
           
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
    updateLoanNoteList: (req, res) => {
        let query =
            "UPDATE loan_note_list SET loan_id='" +
            req.body.loan_id +
            "', user_id='" +
            req.body.user_id +
            "', detail='" +
            req.body.detail +
           
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
