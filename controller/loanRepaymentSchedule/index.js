module.exports = {
    viewLoanRepaymentSchedule: (req, res) => {
        let query =
            "SELECT id, loan_id, ddate, ddays, payDate, disbursement, principalDue, principalBalance, interestDue, fees, penalties, (principalDue+interestDue+fees+penalties) AS totalDue ,   totalPaid, ((principalDue+interestDue+fees+penalties)-totalPaid) AS totalOutStanding FROM loan_repayment_schedule WHERE status =1";
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

    viewLoanRepaymentSchedulePendingPaymentsToDate: (req, res) => {
        let query =
            "SELECT id, loan_id, (SELECT disburseAmount FROM loan WHERE id=loan_repayment_schedule.loan_id ) AS totalPrincipal, (SELECT firstName FROM client WHERE id=(SELECT client_id FROM loan WHERE id=loan_repayment_schedule.loan_id)) AS client, ddate, ddays, payDate, disbursement, principalDue, principalBalance, interestDue, fees, penalties ,  totalPaid FROM loan_repayment_schedule WHERE status =1 AND ((principalDue+interestDue+fees+penalties)-totalPaid)>0 AND disbursement=0 AND ddate<='" + req.params.to_date+"' ORDER BY ddate ASC";
        
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

    viewLoanRepaymentScheduleLoanWise: (req, res) => {
        let query =
            "SELECT id, loan_id, ddate, ddays, payDate, disbursement, principalDue, principalBalance, interestDue, fees, penalties, (principalDue+interestDue+fees+penalties) AS totalDue ,  totalPaid, ((principalDue+interestDue+fees+penalties)-totalPaid) AS totalOutStanding FROM loan_repayment_schedule WHERE status =1 AND loan_id=" + req.params.loan_id;
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

    viewLoanRepaymentScheduleLoanWiseDESC: (req, res) => {
        let query =
            "SELECT id, loan_id, ddate, ddays, payDate, disbursement, principalDue, principalBalance, interestDue, fees, penalties, (principalDue+interestDue+fees+penalties) AS totalDue ,  totalPaid, ((principalDue+interestDue+fees+penalties)-totalPaid) AS totalOutStanding FROM loan_repayment_schedule WHERE status =1 AND loan_id=" + req.params.loan_id+" ORDER By id DESC";
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
    singleLoanRepaymentSchedule: (req, res) => {
        let query =
            "SELECT id, loan_id, ddate, ddays, payDate, disbursement, principalDue, principalBalance, interestDue, fees, penalties, (principalDue+interestDue+fees+penalties) AS totalDue ,   totalPaid,  ((principalDue+interestDue+fees+penalties)-totalPaid) AS totalOutStanding FROM loan_repayment_schedule WHERE id=" +
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
    singleLoanRepaymentScheduleDisbursementAndBalance: (req, res) => {
        let query =
            "SELECT id, loan_id, ddate, ddays, payDate, disbursement, principalDue, principalBalance, interestDue, fees, penalties, (principalDue+interestDue+fees+penalties) AS totalDue ,   totalPaid,  ((principalDue+interestDue+fees+penalties)-totalPaid) AS totalOutStanding FROM loan_repayment_schedule WHERE disbursement=" +
            req.body.disbursement + " AND loan_id=" + req.body.loan_id + " AND principalDue=0 AND principalBalance= " + req.body.disbursement +
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
    deleteLoanRepaymentSchedule: (req, res) => {
        let query =
            "UPDATE loan_repayment_schedule  SET status = 0 WHERE id=" +
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
    deleteLoanRepaymentScheduleLoanWise: (req, res) => {
        let query =
            "UPDATE loan_repayment_schedule  SET status = 0 WHERE loan_id=" +
            req.params.loan_id +
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
    addLoanRepaymentSchedule: (req, res) => {
        let ts = Date.now();
        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        let query =
            "INSERT INTO  loan_repayment_schedule SET loan_id='" +
            req.body.loan_id +

            "', ddate='" +
            req.body.ddate +
            "', ddays='" +
            req.body.ddays +
            "', payDate='" +
            req.body.payDate +
            "', disbursement='" +
            req.body.disbursement +
            "', principalDue='" +
            req.body.principalDue +
            "', principalBalance='" +
            req.body.principalBalance +
            "', interestDue='" +
            req.body.interestDue +
            "', fees='" +
            req.body.fees +
            "', penalties='" +
            req.body.penalties +

            "', totalPaid='" +
            req.body.totalPaid +


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
    updateLoanRepaymentSchedule: (req, res) => {
        let query =
            "UPDATE loan_repayment_schedule SET loan_id='" +
            req.body.loan_id +
            "', ddate='" +
            req.body.ddate +
            "', ddays='" +
            req.body.ddays +
            "', payDate='" +
            req.body.payDate +
            "', disbursement='" +
            req.body.disbursement +
            "', principalDue='" +
            req.body.principalDue +
            "', principalBalance='" +
            req.body.principalBalance +
            "', interestDue='" +
            req.body.interestDue +
            "', fees='" +
            req.body.fees +
            "', penalties='" +
            req.body.penalties +

            "', totalPaid='" +
            req.body.totalPaid +

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
