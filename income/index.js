module.exports = {
    viewIncome: (req, res) => {
      let query =
        "SELECT id, branch_id, (SELECT name FROM branch WHERE id=income.branch_id) AS branch, incomeType_id, (SELECT name FROM income_types WHERE id=income.incomeType_id) AS incomeType, currency, amount, date , incomeAccount, assetAccount, description FROM income WHERE status = 1";
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
    singleIncome: (req, res) => {
      let query =
        "SELECT  id, branch_id, (SELECT name FROM branch WHERE id=income.branch_id) AS branch, incomeType_id, (SELECT name FROM income_types WHERE id=income.incomeType_id) AS incomeType, currency, amount, date , incomeAccount, assetAccount, description FROM income WHERE id=" +
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
    deleteIncome: (req, res) => {
      let query =
        "UPDATE  income SET status = 0 WHERE id=" +
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
    addIncome: (req, res) => {
      let ts = Date.now();
  
      let date_ob = new Date(ts);
      let date = date_ob.getDate();
      let month = date_ob.getMonth() + 1;
      let year = date_ob.getFullYear();
      let query =
        "INSERT INTO  income SET branch_id='" +
        req.body.branch_id +
        "', incomeType_id	='" +
        req.body.incomeType_id	 +
        "', currency= '" +
        req.body.currency +
        "', amount= '" +
        req.body.amount +
        "', date= '" +
        req.body.date +
        "', incomeAccount= '" +
        req.body.incomeAccount +
        "', assetAccount= '" +
        req.body.assetAccount +
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
    updateIncome: (req, res) => {
      let query =
        "UPDATE  income SET branch_id='" +
        req.body.branch_id +
        "', incomeType_id	='" +
        req.body.incomeType_id	 +
        "', currency= '" +
        req.body.currency +
        "', amount= '" +
        req.body.amount +
        "', date= '" +
        req.body.date +
        "', incomeAccount= '" +
        req.body.incomeAccount +
        "', assetAccount= '" +
        req.body.assetAccount +
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
  