module.exports = {
    viewExpense: (req, res) => {
      let query =
        "SELECT id, branch_id, expenseType_id, currency, amount, date, expenseAccount, assetAccount, recurring, recurFrequency, recurType, recurStartDate, recurEndDate, description FROM expense WHERE status = 1";
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
    singleExpense: (req, res) => {
      let query =
        "SELECT id, branch_id, expenseType_id, currency, amount, date, expenseAccount, assetAccount, recurring, recurFrequency, recurType, recurStartDate, recurEndDate, description FROM expense WHERE id=" +
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
    deleteExpense: (req, res) => {
      let query =
        "UPDATE  expense SET status = 0 WHERE id=" +
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
    addExpense: (req, res) => {
      let ts = Date.now();
  
      let date_ob = new Date(ts);
      let date = date_ob.getDate();
      let month = date_ob.getMonth() + 1;
      let year = date_ob.getFullYear();
      let query =
        "INSERT INTO  expense SET branch_id='" +
        req.body.branch_id +
        "', expenseType_id='" +
        req.body.expenseType_id +
        "', currency= '" +
        req.body.currency +
        "', amount='" +
        req.body.amount +
        "', date= '" +
        req.body.date +
        "', expenseAccount='" +
        req.body.expenseAccount +
        "', assetAccount= '" +
        req.body.assetAccount +
        "', recurring='" +
        req.body.recurring +
        "', recurFrequency= '" +
        req.body.recurFrequency +
        "', recurType='" +
        req.body.recurType +
        "', recurStartDate= '" +
        req.body.recurStartDate +
        "', recurEndDate= '" +
        req.body.recurEndDate +
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
    updateExpense: (req, res) => {
      let query =
        "UPDATE  expense SET branch_id='" +
        req.body.branch_id +
        "', expenseType_id='" +
        req.body.expenseType_id +
        "', currency= '" +
        req.body.currency +
        "', amount='" +
        req.body.amount +
        "', date= '" +
        req.body.date +
        "', expenseAccount='" +
        req.body.expenseAccount +
        "', assetAccount= '" +
        req.body.assetAccount +
        "', recurring='" +
        req.body.recurring +
        "', recurFrequency= '" +
        req.body.recurFrequency +
        "', recurType='" +
        req.body.recurType +
        "', recurStartDate= '" +
        req.body.recurStartDate +
        "', recurEndDate= '" +
        req.body.recurEndDate +
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
  