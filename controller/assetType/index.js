module.exports = {
    viewAssetType: (req, res) => {
      let query =
        "SELECT id, name, cashAccount,fixedAssetAccount,expenseAccount,AccumulatedDepreciationAccount,incomeAccount,notes FROM asset_type WHERE status = 1";
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
    singleAssetType: (req, res) => {
      let query =
        "SELECT id, name, cashAccount,fixedAssetAccount,expenseAccount,AccumulatedDepreciationAccount,incomeAccount,notes FROM asset_type WHERE id=" +
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
    deleteAssetType: (req, res) => {
      let query =
        "UPDATE  asset_type SET status = 0 WHERE id=" +
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
    addAssetType: (req, res) => {
      let ts = Date.now();
  
      let date_ob = new Date(ts);
      let date = date_ob.getDate();
      let month = date_ob.getMonth() + 1;
      let year = date_ob.getFullYear();
      let query =
        "INSERT INTO  asset_type SET name='" +
        req.body.name +
        "', cashAccount='" +
        req.body.cashAccount +
        "', fixedAssetAccount= '" +
        req.body.fixedAssetAccount +
        "', expenseAccount= '" +
        req.body.expenseAccount +
        "', AccumulatedDepreciationAccount= '" +
        req.body.AccumulatedDepreciationAccount +
        "', incomeAccount= '" +
        req.body.incomeAccount +
        "', notes= '" +
        req.body.notes +
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
    updateAssetType: (req, res) => {
      let query =
        "UPDATE  asset_type SET name='" +
        req.body.name +
        "', cashAccount='" +
        req.body.cashAccount +
        "', fixedAssetAccount= '" +
        req.body.fixedAssetAccount +
        "', expenseAccount= '" +
        req.body.expenseAccount +
        "', AccumulatedDepreciationAccount= '" +
        req.body.AccumulatedDepreciationAccount +
        "', incomeAccount= '" +
        req.body.incomeAccount +
        "', notes= '" +
        req.body.notes +
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
  