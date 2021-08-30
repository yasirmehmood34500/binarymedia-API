module.exports = {
    viewSavingProduct: (req, res) => {
        let query =
            "SELECT id, name, shortName,  description, currency_id, decimalPlaces, interest, category, autoCreate, compoundingPeriod, interestPostingPeriodType, interestCalculationType, lockinPeriodFrequency, lockinPeriodFrequencyType, automaticOpeningBalance, minimumBalanceForInterestCalculation, AllowOverdraft, accountingRule, savingsReference, overdraftPortfolio, savingsControl, interestOnSavings, writeOffSavings, incomeFromFees, incomeFromPenalties, incomeFromInterest, active  FROM saving_product WHERE status =1";
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
    singleSavingProduct: (req, res) => {
        let query =
            "SELECT id, name, shortName,  description, currency_id, decimalPlaces, interest, category, autoCreate, compoundingPeriod, interestPostingPeriodType, interestCalculationType, lockinPeriodFrequency, lockinPeriodFrequencyType, automaticOpeningBalance, minimumBalanceForInterestCalculation, AllowOverdraft, accountingRule, savingsReference, overdraftPortfolio, savingsControl, interestOnSavings, writeOffSavings, incomeFromFees, incomeFromPenalties, incomeFromInterest, active FROM saving_product WHERE id=" +
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
    deleteSavingProduct: (req, res) => {
        let query =
            "UPDATE saving_product  SET status = 0 WHERE id=" +
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
    addSavingProduct: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        let query =
            "INSERT INTO  saving_product SET name='" +
            req.body.name +
            "', shortName='" +
            req.body.shortName +
            "', description='" +
            req.body.description +
            "', currency_id='" +
            req.body.currency_id +
            "', decimalPlaces='" +
            req.body.decimalPlaces +
            "', interest='" +
            req.body.interest +
            "', category='" +
            req.body.category +
            "', autoCreate='" +
            req.body.autoCreate +
            "', compoundingPeriod='" +
            req.body.compoundingPeriod +
            "', interestPostingPeriodType='" +
            req.body.interestPostingPeriodType +
            "', interestCalculationType='" +
            req.body.interestCalculationType +
            "', lockinPeriodFrequency='" +
            req.body.lockinPeriodFrequency +
            "', lockinPeriodFrequencyType='" +
            req.body.lockinPeriodFrequencyType +
            "', automaticOpeningBalance='" +
            req.body.automaticOpeningBalance +
            "', minimumBalanceForInterestCalculation='" +
            req.body.minimumBalanceForInterestCalculation +
            "', AllowOverdraft='" +
            req.body.AllowOverdraft +
            "', accountingRule='" +
            req.body.accountingRule +
            "', savingsReference='" +
            req.body.savingsReference +
            "', overdraftPortfolio='" +
            req.body.overdraftPortfolio +
            "', savingsControl='" +
            req.body.savingsControl +
            "', interestOnSavings='" +
            req.body.interestOnSavings +
            "', writeOffSavings='" +
            req.body.writeOffSavings +
            "', incomeFromFees='" +
            req.body.incomeFromFees +
            "', incomeFromPenalties='" +
            req.body.incomeFromPenalties +
            "', incomeFromInterest='" +
            req.body.incomeFromInterest +
            "', active='" +
            req.body.active +
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
    updateSavingProduct: (req, res) => {
        let query =
            "UPDATE saving_product SET name='" +
            req.body.name +
            "', shortName='" +
            req.body.shortName +
            "', description='" +
            req.body.description +
            "', currency_id='" +
            req.body.currency_id +
            "', decimalPlaces='" +
            req.body.decimalPlaces +
            "', interest='" +
            req.body.interest +
            "', category='" +
            req.body.category +
            "', autoCreate='" +
            req.body.autoCreate +
            "', compoundingPeriod='" +
            req.body.compoundingPeriod +
            "', interestPostingPeriodType='" +
            req.body.interestPostingPeriodType +
            "', interestCalculationType='" +
            req.body.interestCalculationType +
            "', lockinPeriodFrequency='" +
            req.body.lockinPeriodFrequency +
            "', lockinPeriodFrequencyType='" +
            req.body.lockinPeriodFrequencyType +
            "', automaticOpeningBalance='" +
            req.body.automaticOpeningBalance +
            "', minimumBalanceForInterestCalculation='" +
            req.body.minimumBalanceForInterestCalculation +
            "', AllowOverdraft='" +
            req.body.AllowOverdraft +
            
            "', accountingRule='" +
            req.body.accountingRule +
            "', savingsReference='" +
            req.body.savingsReference +
            "', overdraftPortfolio='" +
            req.body.overdraftPortfolio +
            "', savingsControl='" +
            req.body.savingsControl +
            "', interestOnSavings='" +
            req.body.interestOnSavings +
            "', writeOffSavings='" +
            req.body.writeOffSavings +
            "', incomeFromFees='" +
            req.body.incomeFromFees +
            "', incomeFromPenalties='" +
            req.body.incomeFromPenalties +
            "', incomeFromInterest='" +
            req.body.incomeFromInterest +
            "', active='" +
            req.body.active +
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
