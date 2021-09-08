module.exports = {
  viewActivityLogs: (req, res) => {
    let query =
      "SELECT id, login_id, (SELECT fName FROM login WHERE id=activity_logs.login_id) AS login, description, createAt FROM activity_logs WHERE status = 1";
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
  viewActivityLogsLoginWise: (req, res) => {
    let query =
      "SELECT id, login_id, (SELECT fName FROM login WHERE id=activity_logs.login_id) AS login, description, createAt FROM activity_logs WHERE status = 1 AND login_id="+req.params.login_id;
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
    singleActivityLogs: (req, res) => {
      let query =
        "SELECT id, login_id, (SELECT fName FROM login WHERE id=activity_logs.login_id) AS login, description, createAt FROM activity_logs WHERE id=" +
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
    deleteActivityLogs: (req, res) => {
      let query =
        "UPDATE  activity_logs SET status = 0 WHERE id=" +
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
    addActivityLogs: (req, res) => {
      let ts = Date.now();
  
      let date_ob = new Date(ts);
      let date = date_ob.getDate();
      let month = date_ob.getMonth() + 1;
      let year = date_ob.getFullYear();
      let query =
        "INSERT INTO  activity_logs SET login_id='" +
        req.body.login_id +
        "', description='" +
        req.body.description +
        "', createAt='" +
        year +
        "-" +
        month +
        "-" +
        date +
        "'";
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
            result: "Successfully Added",
          });
        }
      });
    },
    updateActivityLogs: (req, res) => {
      let query =
        "UPDATE  activity_logs SET login_id='" +
        req.body.login_id +
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
  