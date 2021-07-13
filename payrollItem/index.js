module.exports = {
  viewPayrollItem: (req, res) => {
    let query =
      "SELECT id, name,type,amountType,amount,description FROM payroll_items WHERE status = 1";
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
  singlePayrollItem: (req, res) => {
    let query =
      "SELECT  id, name,type,amountType,amount,description   FROM  payroll_items WHERE id=" +
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
  deletePayrollItem: (req, res) => {
    let query =
      "UPDATE  payroll_items SET status = 0 WHERE id=" +
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
  addPayrollItem: (req, res) => {
    let ts = Date.now();

    let date_ob = new Date(ts);
    let date = date_ob.getDate();
    let month = date_ob.getMonth() + 1;
    let year = date_ob.getFullYear();
    let query =
      "INSERT INTO  payroll_items SET name='" +
      req.body.name +
      "', type='" +
      req.body.type +
      "', amountType= '" +
      req.body.amountType +
      "', amount='" +
      req.body.amount +
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
  updatePayrollItem: (req, res) => {
    let query =
      "UPDATE  payroll_items SET name='" +
      req.body.name +
      "', type='" +
      req.body.type +
      "', amountType= '" +
      req.body.amountType +
      "', amount='" +
      req.body.amount +
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
