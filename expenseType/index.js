module.exports = {
    viewExpenseType: (req, res) => {
      let query =
        "SELECT id, name, expenseAccount,assetAccount FROM expense_types WHERE status = 1";
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
    singleExpenseType: (req, res) => {
      let query =
        "SELECT id, name, expenseAccount,assetAccount FROM expense_types WHERE id=" +
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
    deleteExpenseType: (req, res) => {
      let query =
        "UPDATE  expense_types SET status = 0 WHERE id=" +
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
    addExpenseType: (req, res) => {
      let ts = Date.now();
  
      let date_ob = new Date(ts);
      let date = date_ob.getDate();
      let month = date_ob.getMonth() + 1;
      let year = date_ob.getFullYear();
      let query =
        "INSERT INTO  expense_types SET name='" +
        req.body.name +
        "', expenseAccount='" +
        req.body.expenseAccount +
        "', assetAccount= '" +
        req.body.assetAccount +
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
    updateExpenseType: (req, res) => {
      let query =
        "UPDATE  expense_types SET name='" +
        req.body.name +
        "', expenseAccount='" +
        req.body.expenseAccount +
        "', assetAccount= '" +
        req.body.assetAccount +
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
  