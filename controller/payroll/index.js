module.exports = {
    viewPayroll: (req, res) => {
      let query =
        "SELECT id,branch_id, (SELECT name FROM branch WHERE id =payroll.branch_id) AS branch ,user_id, (SELECT firstName FROM user WHERE id =payroll.user_id) AS user,date,payroll_template_id, (SELECT name FROM payroll_templates WHERE id =payroll.payroll_template_id) AS payroll_template ,currency,workDuration,durationUnit,amountPerDuration,totalDurationAmount,allowances,deduction,bankName,recuring,recurFrequency,recurType,recurStartDate,recurEndDate FROM payroll WHERE status = 1";
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
    singlePayroll: (req, res) => {
      let query =
        "SELECT  id,branch_id, (SELECT name FROM branch WHERE id =payroll.branch_id) AS branch ,user_id, (SELECT firstName FROM user WHERE id =payroll.user_id) AS user,date,payroll_template_id, (SELECT name FROM payroll_templates WHERE id =payroll.payroll_template_id) AS payroll_template ,currency,workDuration,durationUnit,amountPerDuration,totalDurationAmount,allowances,deduction,bankName,recuring,recurFrequency,recurType,recurStartDate,recurEndDate   FROM  payroll WHERE id=" +
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
    deletePayroll: (req, res) => {
      let query =
        "UPDATE  payroll SET status = 0 WHERE id=" +
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
    addPayroll: (req, res) => {
      let ts = Date.now();
  
      let date_ob = new Date(ts);
      let date = date_ob.getDate();
      let month = date_ob.getMonth() + 1;
      let year = date_ob.getFullYear();
      let query =
        "INSERT INTO  payroll SET branch_id='" +
        req.body.branch_id +
        "', user_id='" +
        req.body.user_id +
        "', date= '" +
        req.body.date +
        "', payroll_template_id='" +
        req.body.payroll_template_id +
        "', currency= '" +
        req.body.currency +
        "', workDuration= '" +
        req.body.workDuration +
        "', durationUnit= '" +
        req.body.durationUnit +
        "', amountPerDuration= '" +
        req.body.amountPerDuration +
        "', totalDurationAmount= '" +
        req.body.totalDurationAmount +
        "', allowances= '" +
        req.body.allowances +
        "', deduction= '" +
        req.body.deduction +
        "', bankName= '" +
        req.body.bankName +
        "', recuring= '" +
        req.body.recuring +
        "', recurFrequency= '" +
        req.body.recurFrequency +
        "', recurType= '" +
        req.body.recurType +
        "', recurStartDate= '" +
        req.body.recurStartDate +
        "', recurEndDate= '" +
        req.body.recurEndDate +
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
    updatePayroll: (req, res) => {
      let query =
        "UPDATE  payroll SET branch_id='" +
        req.body.branch_id +
        "', user_id='" +
        req.body.user_id +
        "', date= '" +
        req.body.date +
        "', payroll_template_id='" +
        req.body.payroll_template_id +
        "', currency= '" +
        req.body.currency +
        "', workDuration= '" +
        req.body.workDuration +
        "', durationUnit= '" +
        req.body.durationUnit +
        "', amountPerDuration= '" +
        req.body.amountPerDuration +
        "', totalDurationAmount= '" +
        req.body.totalDurationAmount +
        "', allowances= '" +
        req.body.allowances +
        "', deduction= '" +
        req.body.deduction +
        "', bankName= '" +
        req.body.bankName +
        "', recuring= '" +
        req.body.recuring +
        "', recurFrequency= '" +
        req.body.recurFrequency +
        "', recurType= '" +
        req.body.recurType +
        "', recurStartDate= '" +
        req.body.recurStartDate +
        "', recurEndDate= '" +
        req.body.recurEndDate +
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
  