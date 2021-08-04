module.exports = {
    viewAsset: (req, res) => {
      let query =
        "SELECT id,branch_id,asset_type_id,name,purchaseDate,cost,lifeSpan,salvageValue,notes FROM asset WHERE status = 1";
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
    singleAsset: (req, res) => {
      let query =
        "SELECT id,branch_id,asset_type_id,name,purchaseDate,cost,lifeSpan,salvageValue,notes FROM asset WHERE id=" +
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
    deleteAsset: (req, res) => {
      let query =
        "UPDATE  asset SET status = 0 WHERE id=" +
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
    addAsset: (req, res) => {
      let ts = Date.now();
  
      let date_ob = new Date(ts);
      let date = date_ob.getDate();
      let month = date_ob.getMonth() + 1;
      let year = date_ob.getFullYear();
      let query =
        "INSERT INTO  asset SET branch_id='" +
        req.body.branch_id +
        "', asset_type_id='" +
        req.body.asset_type_id +
        "', name= '" +
        req.body.name +
        "', purchaseDate= '" +
        req.body.purchaseDate +
        "', cost= '" +
        req.body.cost +
        "', lifeSpan= '" +
        req.body.lifeSpan +
        "', salvageValue= '" +
        req.body.salvageValue +
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
    updateAsset: (req, res) => {
      let query =
        "UPDATE  asset SET branch_id='" +
        req.body.branch_id +
        "', asset_type_id='" +
        req.body.asset_type_id +
        "', name= '" +
        req.body.name +
        "', purchaseDate= '" +
        req.body.purchaseDate +
        "', cost= '" +
        req.body.cost +
        "', lifeSpan= '" +
        req.body.lifeSpan +
        "', salvageValue= '" +
        req.body.salvageValue +
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
  