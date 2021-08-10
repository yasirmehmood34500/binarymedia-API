module.exports = {
    viewLoanProduct: (req, res) => {
        let query =
            "SELECT id, name, shortName, description, funds_id, (SELECT name FROM funds WHERE id=loan_products.funds_id) AS funds, currency_id, decimalPlaces, defaultPrincipal, minimumPrincipal, maximumPrincipal, defaultLoanTerm, minimumLoanTerm, maximumLoanTerm, repaymentFrequency, type, defaultInterestRate, minimumInterestRate, maximumInterestRate, interestRateType, graceOnPrincipalPayment, graceOnInterestPayment, graceOnInterestCharged, interestMethodology, amortizationMethod, loanTransactionProcessingStrategy,  creditCheck, accountingRule, fundSource, loanPortfolio, overpayments, suspendedIncome, incomeFromInterest, incomeFromPenalties, incomeFromFees, incomeFromRecovery, lossesWrittenOff, interestWrittenOff, autoDisburse, graceOnPrincipalPay, active FROM loan_products WHERE status =1";
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
    singleLoanProduct: (req, res) => {
        let query =
            "SELECT id, name, shortName, description, funds_id, (SELECT name FROM funds WHERE id=loan_products.funds_id) AS funds, currency_id, decimalPlaces, defaultPrincipal, minimumPrincipal, maximumPrincipal, defaultLoanTerm, minimumLoanTerm, maximumLoanTerm, repaymentFrequency, type, defaultInterestRate, minimumInterestRate, maximumInterestRate, interestRateType, graceOnPrincipalPayment, graceOnInterestPayment, graceOnInterestCharged, interestMethodology, amortizationMethod, loanTransactionProcessingStrategy,  creditCheck, accountingRule, fundSource, loanPortfolio, overpayments, suspendedIncome, incomeFromInterest, incomeFromPenalties, incomeFromFees, incomeFromRecovery, lossesWrittenOff, interestWrittenOff, autoDisburse, graceOnPrincipalPay, active FROM loan_products WHERE id=" +
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
    deleteLoanProduct: (req, res) => {
        let query =
            "UPDATE loan_products  SET status = 0 WHERE id=" +
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
    addLoanProduct: (req, res) => {
        let ts = Date.now();

        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        let query =
            "INSERT INTO  loan_products SET name='" +
            req.body.name +
            "', shortName='" +
            req.body.shortName +
            "', description='" +
            req.body.description +
            "', funds_id='" +
            req.body.funds_id +
            "', currency_id='" +
            req.body.currency_id +
            "', decimalPlaces='" +
            req.body.decimalPlaces +
            "', defaultPrincipal='" +
            req.body.defaultPrincipal +
            "', minimumPrincipal='" +
            req.body.minimumPrincipal +
            "', maximumPrincipal='" +
            req.body.maximumPrincipal +
            "', defaultLoanTerm='" +
            req.body.defaultLoanTerm +
            "', minimumLoanTerm='" +
            req.body.minimumLoanTerm +
            "', maximumLoanTerm='" +
            req.body.maximumLoanTerm +
            "', repaymentFrequency='" +
            req.body.repaymentFrequency +
            "', type='" +
            req.body.type +
            "', defaultInterestRate='" +
            req.body.defaultInterestRate +
            "', minimumInterestRate='" +
            req.body.minimumInterestRate +
            "', maximumInterestRate='" +
            req.body.maximumInterestRate +
            "', interestRateType='" +
            req.body.interestRateType +
            "', graceOnPrincipalPayment='" +
            req.body.graceOnPrincipalPayment +
            "', graceOnInterestPayment='" +
            req.body.graceOnInterestPayment +
            "', graceOnInterestCharged='" +
            req.body.graceOnInterestCharged +
            "', interestMethodology='" +
            req.body.interestMethodology +
            "', amortizationMethod='" +
            req.body.amortizationMethod +
            "', loanTransactionProcessingStrategy='" +
            req.body.loanTransactionProcessingStrategy +
            
            "', creditCheck='" +
            req.body.creditCheck +
            "', accountingRule='" +
            req.body.accountingRule +
            "', fundSource='" +
            req.body.fundSource +
            "', loanPortfolio='" +
            req.body.loanPortfolio +
            "', overpayments='" +
            req.body.overpayments +
            "', suspendedIncome='" +
            req.body.suspendedIncome +
            "', incomeFromInterest='" +
            req.body.incomeFromInterest +
            "', incomeFromPenalties='" +
            req.body.incomeFromPenalties +
            "', incomeFromFees='" +
            req.body.incomeFromFees +
            "', incomeFromRecovery='" +
            req.body.incomeFromRecovery +
            "', lossesWrittenOff='" +
            req.body.lossesWrittenOff +
            "', interestWrittenOff='" +
            req.body.interestWrittenOff + 
            "', autoDisburse='" +
            req.body.autoDisburse +
            "', graceOnPrincipalPay='" +
            req.body.graceOnPrincipalPay +
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
                    insertedId: result.insertId,
                });
            }
        });
    },
    updateLoanProduct: (req, res) => {
        let query =
            "UPDATE loan_products SET name='" +
            req.body.name +
            "', shortName='" +
            req.body.shortName +
            "', description='" +
            req.body.description +
            "', funds_id='" +
            req.body.funds_id +
            "', currency_id='" +
            req.body.currency_id +
            "', decimalPlaces='" +
            req.body.decimalPlaces +
            "', defaultPrincipal='" +
            req.body.defaultPrincipal +
            "', minimumPrincipal='" +
            req.body.minimumPrincipal +
            "', maximumPrincipal='" +
            req.body.maximumPrincipal +
            "', defaultLoanTerm='" +
            req.body.defaultLoanTerm +
            "', minimumLoanTerm='" +
            req.body.minimumLoanTerm +
            "', maximumLoanTerm='" +
            req.body.maximumLoanTerm +
            "', repaymentFrequency='" +
            req.body.repaymentFrequency +
            "', type='" +
            req.body.type +
            "', defaultInterestRate='" +
            req.body.defaultInterestRate +
            "', minimumInterestRate='" +
            req.body.minimumInterestRate +
            "', maximumInterestRate='" +
            req.body.maximumInterestRate +
            "', interestRateType='" +
            req.body.interestRateType +
            "', graceOnPrincipalPayment='" +
            req.body.graceOnPrincipalPayment +
            "', graceOnInterestPayment='" +
            req.body.graceOnInterestPayment +
            "', graceOnInterestCharged='" +
            req.body.graceOnInterestCharged +
            "', interestMethodology='" +
            req.body.interestMethodology +
            "', amortizationMethod='" +
            req.body.amortizationMethod +
            "', loanTransactionProcessingStrategy='" +
            req.body.loanTransactionProcessingStrategy +
           
            "', creditCheck='" +
            req.body.creditCheck +
            "', accountingRule='" +
            req.body.accountingRule +
            "', fundSource='" +
            req.body.fundSource +
            "', loanPortfolio='" +
            req.body.loanPortfolio +
            "', overpayments='" +
            req.body.overpayments +
            "', suspendedIncome='" +
            req.body.suspendedIncome +
            "', incomeFromInterest='" +
            req.body.incomeFromInterest +
            "', incomeFromPenalties='" +
            req.body.incomeFromPenalties +
            "', incomeFromFees='" +
            req.body.incomeFromFees +
            "', incomeFromRecovery='" +
            req.body.incomeFromRecovery +
            "', lossesWrittenOff='" +
            req.body.lossesWrittenOff +
            "', interestWrittenOff='" +
            req.body.interestWrittenOff + 
            "', autoDisburse='" +
            req.body.autoDisburse +
            "', graceOnPrincipalPay='" +
            req.body.graceOnPrincipalPay +
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
