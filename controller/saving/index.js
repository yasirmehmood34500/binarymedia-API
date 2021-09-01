module.exports = {
    viewSaving: (req, res) => {
        let query =
            "SELECT id, client_id, (SELECT firstName FROM client WHERE id=saving.client_id) AS client, savingProduct_id, (SELECT name FROM saving_product WHERE id=saving.savingProduct_id) AS savingProduct, savingOfficer_user_id, (SELECT firstName FROM user WHERE id=saving.savingOfficer_user_id)  AS user, saving_status_id, (SELECT name FROM saving_status WHERE id=saving.saving_status_id) AS savingStatus, accountNumber, externalId, currency_id, (SELECT name FROM currency WHERE id=saving.currency_id) AS currency, category, compoundingPeriod, interestPostingPeriodType, interestCalculationType,  interest, automaticOpeningBalance, lockinPeriodFrequency, lockinPeriodFrequencyType, withdrawLockDate,  approveDate, approveNote, activationDate, activationNote	 FROM saving WHERE status =1";
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
    singleSaving: (req, res) => {
        let query =
            "SELECT  id, client_id, (SELECT firstName FROM client WHERE id=saving.client_id) AS client, savingProduct_id, (SELECT name FROM saving_product WHERE id=saving.savingProduct_id) AS savingProduct, savingOfficer_user_id, (SELECT firstName FROM user WHERE id=saving.savingOfficer_user_id)  AS user, saving_status_id, (SELECT name FROM saving_status WHERE id=saving.saving_status_id) AS savingStatus, accountNumber, externalId, currency_id, (SELECT name FROM currency WHERE id=saving.currency_id) AS currency, category, compoundingPeriod, interestPostingPeriodType, interestCalculationType,  interest, automaticOpeningBalance, lockinPeriodFrequency, lockinPeriodFrequencyType, withdrawLockDate,  approveDate, approveNote, activationDate, activationNote	 FROM saving  WHERE id=" +
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
    deleteSaving: (req, res) => {
        let query =
            "UPDATE saving  SET status = 0 WHERE id=" +
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
    addSaving: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        let query =
            "INSERT INTO  saving SET client_id='" +
            req.body.client_id +
            "', savingProduct_id='" +
            req.body.savingProduct_id +
            "', savingOfficer_user_id='" +
            req.body.savingOfficer_user_id +
            "', accountNumber='" +
            req.body.accountNumber +
            "', externalId='" +
            req.body.externalId +
            "', currency_id='" +
            req.body.currency_id +
            "', category='" +
            req.body.category +
            "', compoundingPeriod='" +
            req.body.compoundingPeriod +
            "', interestPostingPeriodType='" +
            req.body.interestPostingPeriodType +
            "', interestCalculationType='" +
            req.body.interestCalculationType +
            "', withdrawLockDate='" +
            req.body.withdrawLockDate +
            "', interest='" +
            req.body.interest +
            "', automaticOpeningBalance='" +
            req.body.automaticOpeningBalance +
            "', lockinPeriodFrequency='" +
            req.body.lockinPeriodFrequency +
            "', lockinPeriodFrequencyType='" +
            req.body.lockinPeriodFrequencyType +

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
                    insertId: result.insertId,
                });
            }
        });
    },
    updateSaving: (req, res) => {
        let query =
            "UPDATE saving SET client_id='" +
            req.body.client_id +
            "', savingProduct_id='" +
            req.body.savingProduct_id +
            "', savingOfficer_user_id='" +
            req.body.savingOfficer_user_id +
            "', accountNumber='" +
            req.body.accountNumber +
            "', externalId='" +
            req.body.externalId +
            "', currency_id='" +
            req.body.currency_id +
            "', category='" +
            req.body.category +
            "', compoundingPeriod='" +
            req.body.compoundingPeriod +
            "', interestPostingPeriodType='" +
            req.body.interestPostingPeriodType +
            "', interestCalculationType='" +
            req.body.interestCalculationType +
            "', interest='" +
            req.body.interest +
            "', automaticOpeningBalance='" +
            req.body.automaticOpeningBalance +
            "', lockinPeriodFrequency='" +
            req.body.lockinPeriodFrequency +
            "', lockinPeriodFrequencyType='" +
            req.body.lockinPeriodFrequencyType +
            "', withdrawLockDate='" +
            req.body.withdrawLockDate +

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

    approveSaving: (req, res) => {
        let query =
            "UPDATE saving SET approveDate='" +
            req.body.approveDate +
            "', approveNote='" +
            req.body.approveNote +
            "', saving_status_id='" +
            2 +

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

    rejectSaving: (req, res) => {
        let query =
            "UPDATE saving SET rejectNote='" +
            req.body.rejectNote +
            "', saving_status_id='" +
            4 +

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

    withdrawSaving: (req, res) => {
        let query =
            "UPDATE saving SET withdrawNote='" +
            req.body.withdrawNote +
            "', saving_status_id='" +
            5 +

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

    activateSaving: (req, res) => {
        let query =
            "UPDATE saving SET activationDate='" +
            req.body.activationDate +
            "', activationNote='" +
            req.body.activationNote +
            "', saving_status_id='" +
            3 +

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

    closeSaving: (req, res) => {
        let query =
            "UPDATE saving SET closeNote='" +
            req.body.closeNote +
            "', saving_status_id='" +
            6 +

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

    changeSavingOfficer: (req, res) => {
        let query =
            "UPDATE saving SET savingOfficer_user_id='" +
            req.body.savingOfficer_user_id +

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

    undoCloseSaving: (req, res) => {
        let query =
            "UPDATE saving SET closeNote='" +
            "" +
            "', saving_status_id='" +
            3 +

            "' WHERE id=" +
            req.params.id;
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

    undoActivateSaving: (req, res) => {
        let query =
            "UPDATE saving SET activationDate='" +
            "" +
            "', activationNote='" +
            "" +
            "', saving_status_id='" +
            2 +

            "' WHERE id=" +
            req.params.id;
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

    undoApprovalSaving: (req, res) => {
        let query =
            "UPDATE saving SET approveDate='" +
            "" +
            "', approveNote='" +
            "" +
            "', saving_status_id='" +
            1 +

            "' WHERE id=" +
            req.params.id;
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

    undoRejectSaving: (req, res) => {
        let query =
            "UPDATE saving SET rejectNote='" +
            "" +
            "', saving_status_id='" +
            1 +

            "' WHERE id=" +
            req.params.id;
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

    undoWithdrawSaving: (req, res) => {
        let query =
            "UPDATE saving SET withdrawNote='" +
            "" +
            "', saving_status_id='" +
            1 +

            "' WHERE id=" +
            req.params.id;
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
