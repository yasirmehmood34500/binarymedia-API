const express = require("express");
const app = express();
require("dotenv").config();
const port = process.env.PORT;
app.use(express.json());
require("./db");

// functions
const {
  viewChartOfAccount,
  singleChartOfAccount,
  addChartOfAccount,
  deleteChartOfAccount,
  updateChartOfAccount,
  updateJournalEntries,
  addJournalEntries,
  viewJournalEntries,
  singleJournalEntries,
  deleteJournalEntries,
} = require("./controller/accounting/index");
const {
  viewActivityLogs,
  singleActivityLogs,
  addActivityLogs,
  updateActivityLogs,
  deleteActivityLogs,
} = require("./controller/activityLogs");
const {
  viewAsset,
  singleAsset,
  addAsset,
  updateAsset,
  deleteAsset,
} = require("./controller/asset");
const {
  viewAssetType,
  singleAssetType,
  addAssetType,
  updateAssetType,
  deleteAssetType,
} = require("./controller/assetType");
const {
  viewBranches,
  singleBranches,
  addBranches,
  updateBranches,
  deleteBranches,
} = require("./controller/branches/index");
const {
  viewBranchUser,
  singleBranchUser,
  addBranchUser,
  updateBranchUser,
  deleteBranchUser,
} = require("./controller/branchUser");
const {
  viewChargeOnLoan,
  singleChargeOnLoan,
  addChargeOnLoan,
  updateChargeOnLoan,
  deleteChargeOnLoan,
} = require("./controller/chargeOnLoan");
const {
  viewChargeOnSaving,
  singleChargeOnSaving,
  addChargeOnSaving,
  updateChargeOnSaving,
  deleteChargeOnSaving,
} = require("./controller/chargeOnSaving");
const {
  viewClient,
  singleClient,
  addClient,
  updateClient,
  deleteClient,
} = require("./controller/client");
const {
  viewClientType,
  singleClientType,
  addClientType,
  updateClientType,
  deleteClientType,
} = require("./controller/clientType");
const {
  viewCountry,
  singleCountry,
  addCountry,
  updateCountry,
  deleteCountry,
} = require("./controller/country");
const {
  viewCurrency,
  singleCurrency,
  addCurrency,
  updateCurrency,
  deleteCurrency,
} = require("./controller/currency");
const {
  viewExpense,
  singleExpense,
  addExpense,
  updateExpense,
  deleteExpense,
} = require("./controller/expense");
const {
  viewExpenseType,
  singleExpenseType,
  addExpenseType,
  updateExpenseType,
  deleteExpenseType,
} = require("./controller/expenseType");
const { viewFunds, singleFunds, addFunds, updateFunds, deleteFunds } = require("./controller/funds");
const {
  viewGeneralSetting,
  singleGeneralSetting,
  addGeneralSetting,
  updateGeneralSetting,
  deleteGeneralSetting,
  singleGeneralSettingUser,
  updateGeneralSettingUser,
} = require("./controller/generalSetting");
const {
  viewIncome,
  singleIncome,
  addIncome,
  updateIncome,
  deleteIncome,
} = require("./controller/income");
const {
  viewIncomeType,
  singleIncomeType,
  addIncomeType,
  updateIncomeType,
  deleteIncomeType,
} = require("./controller/incomeType");
const {
  viewLoan,
  singleLoan,
  addLoan,
  updateLoan,
  deleteLoan,
} = require("./controller/loan");
const {
  viewLoanCharges,
  singleLoanCharges,
  addLoanCharges,
  updateLoanCharges,
  deleteLoanCharges,
} = require("./controller/loanCharges");
const {
  viewLoanProduct,
  singleLoanProduct,
  addLoanProduct,
  updateLoanProduct,
  deleteLoanProduct,
} = require("./controller/loanProduct");
const {
  viewLoanPurpose,
  singleLoanPurpose,
  addLoanPurpose,
  updateLoanPurpose,
  deleteLoanPurpose,
} = require("./controller/loanPurpose");
const {
  viewPaymentType,
  singlePaymentType,
  addPaymentType,
  updatePaymentType,
  deletePaymentType,
} = require("./controller/paymentType");
const {
  viewPayroll,
  singlePayroll,
  addPayroll,
  updatePayroll,
  deletePayroll,
} = require("./controller/payroll");
const {
  viewPayrollItem,
  singlePayrollItem,
  addPayrollItem,
  updatePayrollItem,
  deletePayrollItem,
} = require("./controller/payrollItem");
const { viewPayrollPayment, singlePayrollPayment, addPayrollPayment, updatePayrollPayment, deletePayrollPayment, payrollPaymentPayrollWise } = require("./controller/payrollPayment");
const {
  viewPayrollTemplate,
  singlePayrollTemplate,
  addPayrollTemplate,
  updatePayrollTemplate,
  deletePayrollTemplate,
} = require("./controller/payrollTemplate");
const {
  viewProfessions,
  singleProfessions,
  addProfessions,
  updateProfessions,
  deleteProfessions,
} = require("./controller/professions");
const {
  viewRole,
  singleRole,
  addRole,
  updateRole,
  deleteRole,
} = require("./controller/role");
const {
  viewSaving,
  singleSaving,
  addSaving,
  updateSaving,
  deleteSaving,
} = require("./controller/saving");
const {
  viewSavingCharges,
  singleSavingCharges,
  addSavingCharges,
  updateSavingCharges,
  deleteSavingCharges,
} = require("./controller/savingCharges");
const {
  viewSavingProduct,
  singleSavingProduct,
  addSavingProduct,
  updateSavingProduct,
  deleteSavingProduct,
} = require("./controller/savingProduct");
const {
  viewTimeZone,
  singleTimeZone,
  addTimeZone,
  updateTimeZone,
  deleteTimeZone,
} = require("./controller/timeZone");
const {
  viewTitle,
  singleTitle,
  addTitle,
  updateTitle,
  deleteTitle,
} = require("./controller/title");
const {
  viewUser,
  singleUser,
  addUser,
  updateUser,
  deleteUser,
  viewUserRoleId,
} = require("./controller/user");

// routes

app.get("/", (req, res) => {
  res.send("BinaryMdeia API");
});
var version = "/v1";

// accounting routes
app.get(version + "/accounting", viewChartOfAccount);
app.get(version + "/accounting/:id", singleChartOfAccount);
app.post(version + "/accounting", addChartOfAccount);
app.put(version + "/accounting", updateChartOfAccount);
app.delete(version + "/accounting/:id", deleteChartOfAccount);

// journal entries routes
app.get(version + "/journalEntry", viewJournalEntries);
app.get(version + "/journalEntry/:id", singleJournalEntries);
app.post(version + "/journalEntry", addJournalEntries);
app.put(version + "/journalEntry", updateJournalEntries);
app.delete(version + "/journalEntry/:id", deleteJournalEntries);

// branches routes
app.get(version + "/branches", viewBranches);
app.get(version + "/branches/:id", singleBranches);
app.post(version + "/branches", addBranches);
app.put(version + "/branches", updateBranches);
app.delete(version + "/branches/:id", deleteBranches);

// branch user routes
app.get(version + "/branchUser", viewBranchUser);
app.get(version + "/branchUser/:id", singleBranchUser);
app.post(version + "/branchUser", addBranchUser);
app.put(version + "/branchUser", updateBranchUser);
app.delete(version + "/branchUser/:id", deleteBranchUser);

// client routes
app.get(version + "/client", viewClient);
app.get(version + "/client/:id", singleClient);
app.post(version + "/client", addClient);
app.put(version + "/client", updateClient);
app.delete(version + "/client/:id", deleteClient);

// country routes
app.get(version + "/country", viewCountry);
app.get(version + "/country/:id", singleCountry);
app.post(version + "/country", addCountry);
app.put(version + "/country", updateCountry);
app.delete(version + "/country/:id", deleteCountry);

// time zone routes
app.get(version + "/timeZone", viewTimeZone);
app.get(version + "/timeZone/:id", singleTimeZone);
app.post(version + "/timeZone", addTimeZone);
app.put(version + "/timeZone", updateTimeZone);
app.delete(version + "/timeZone/:id", deleteTimeZone);

// payroll template routes
app.get(version + "/payrollTemplate", viewPayrollTemplate);
app.get(version + "/payrollTemplate/:id", singlePayrollTemplate);
app.post(version + "/payrollTemplate", addPayrollTemplate);
app.put(version + "/payrollTemplate", updatePayrollTemplate);
app.delete(version + "/payrollTemplate/:id", deletePayrollTemplate);

// payroll item routes
app.get(version + "/payrollItem", viewPayrollItem);
app.get(version + "/payrollItem/:id", singlePayrollItem);
app.post(version + "/payrollItem", addPayrollItem);
app.put(version + "/payrollItem", updatePayrollItem);
app.delete(version + "/payrollItem/:id", deletePayrollItem);

// payroll payment routes
app.get(version + "/payrollPayment", viewPayrollPayment);
app.get(version + "/payrollPayment/:id", singlePayrollPayment);
app.get(version + "/payrollPaymentPayrollWise/:id", payrollPaymentPayrollWise);
app.post(version + "/payrollPayment", addPayrollPayment);
app.put(version + "/payrollPayment", updatePayrollPayment);
app.delete(version + "/payrollPayment/:id", deletePayrollPayment);


// payroll routes
app.get(version + "/payroll", viewPayroll);
app.get(version + "/payroll/:id", singlePayroll);
app.post(version + "/payroll", addPayroll);
app.put(version + "/payroll", updatePayroll);
app.delete(version + "/payroll/:id", deletePayroll);

// expense type routes
app.get(version + "/expenseType", viewExpenseType);
app.get(version + "/expenseType/:id", singleExpenseType);
app.post(version + "/expenseType", addExpenseType);
app.put(version + "/expenseType", updateExpenseType);
app.delete(version + "/expenseType/:id", deleteExpenseType);

// expense routes
app.get(version + "/expense", viewExpense);
app.get(version + "/expense/:id", singleExpense);
app.post(version + "/expense", addExpense);
app.put(version + "/expense", updateExpense);
app.delete(version + "/expense/:id", deleteExpense);

// income type routes
app.get(version + "/incomeType", viewIncomeType);
app.get(version + "/incomeType/:id", singleIncomeType);
app.post(version + "/incomeType", addIncomeType);
app.put(version + "/incomeType", updateIncomeType);
app.delete(version + "/incomeType/:id", deleteIncomeType);

// general setting routes
app.get(version + "/generalSetting", viewGeneralSetting);
app.get(version + "/generalSetting/:id", singleGeneralSetting);
app.get(version + "/generalSettingUser/:id", singleGeneralSettingUser);
app.put(version + "/generalSettingUser", updateGeneralSettingUser);
app.post(version + "/generalSetting", addGeneralSetting);
app.put(version + "/generalSetting", updateGeneralSetting);
app.delete(version + "/generalSetting/:id", deleteGeneralSetting);

// income  routes
app.get(version + "/income", viewIncome);
app.get(version + "/income/:id", singleIncome);
app.post(version + "/income", addIncome);
app.put(version + "/income", updateIncome);
app.delete(version + "/income/:id", deleteIncome);

// activity logs routes
app.get(version + "/activityLogs", viewActivityLogs);
app.get(version + "/activityLogs/:id", singleActivityLogs);
app.post(version + "/activityLogs", addActivityLogs);
app.put(version + "/activityLogs", updateActivityLogs);
app.delete(version + "/activityLogs/:id", deleteActivityLogs);

// role routes
app.get(version + "/role", viewRole);
app.get(version + "/role/:id", singleRole);
app.post(version + "/role", addRole);
app.put(version + "/role", updateRole);
app.delete(version + "/role/:id", deleteRole);

// user routes
app.get(version + "/user", viewUser);
app.get(version + "/user/:id", singleUser);
app.get(version + "/userRoleId/:role_id", viewUserRoleId);
app.post(version + "/user", addUser);
app.put(version + "/user", updateUser);
app.delete(version + "/user/:id", deleteUser);

// asset type routes
app.get(version + "/assetType", viewAssetType);
app.get(version + "/assetType/:id", singleAssetType);
app.post(version + "/assetType", addAssetType);
app.put(version + "/assetType", updateAssetType);
app.delete(version + "/assetType/:id", deleteAssetType);

// asset  routes
app.get(version + "/asset", viewAsset);
app.get(version + "/asset/:id", singleAsset);
app.post(version + "/asset", addAsset);
app.put(version + "/asset", updateAsset);
app.delete(version + "/asset/:id", deleteAsset);

// client type routes
app.get(version + "/clientType", viewClientType);
app.get(version + "/clientType/:id", singleClientType);
app.post(version + "/clientType", addClientType);
app.put(version + "/clientType", updateClientType);
app.delete(version + "/clientType/:id", deleteClientType);

// titles routes
app.get(version + "/title", viewTitle);
app.get(version + "/title/:id", singleTitle);
app.post(version + "/title", addTitle);
app.put(version + "/title", updateTitle);
app.delete(version + "/title/:id", deleteTitle);

// professions routes
app.get(version + "/profession", viewProfessions);
app.get(version + "/profession/:id", singleProfessions);
app.post(version + "/profession", addProfessions);
app.put(version + "/profession", updateProfessions);
app.delete(version + "/profession/:id", deleteProfessions);

// currency routes
app.get(version + "/currency", viewCurrency);
app.get(version + "/currency/:id", singleCurrency);
app.post(version + "/currency", addCurrency);
app.put(version + "/currency", updateCurrency);
app.delete(version + "/currency/:id", deleteCurrency);

// paymentType routes
app.get(version + "/paymentType", viewPaymentType);
app.get(version + "/paymentType/:id", singlePaymentType);
app.post(version + "/paymentType", addPaymentType);
app.put(version + "/paymentType", updatePaymentType);
app.delete(version + "/paymentType/:id", deletePaymentType);

// loanPurpose routes
app.get(version + "/loanPurpose", viewLoanPurpose);
app.get(version + "/loanPurpose/:id", singleLoanPurpose);
app.post(version + "/loanPurpose", addLoanPurpose);
app.put(version + "/loanPurpose", updateLoanPurpose);
app.delete(version + "/loanPurpose/:id", deleteLoanPurpose);

// loan product routes
app.get(version + "/loanProduct", viewLoanProduct);
app.get(version + "/loanProduct/:id", singleLoanProduct);
app.post(version + "/loanProduct", addLoanProduct);
app.put(version + "/loanProduct", updateLoanProduct);
app.delete(version + "/loanProduct/:id", deleteLoanProduct);

// loan charges routes
app.get(version + "/loanCharges", viewLoanCharges);
app.get(version + "/loanCharges/:id", singleLoanCharges);
app.post(version + "/loanCharges", addLoanCharges);
app.put(version + "/loanCharges", updateLoanCharges);
app.delete(version + "/loanCharges/:id", deleteLoanCharges);

// loan  routes
app.get(version + "/loan", viewLoan);
app.get(version + "/loan/:id", singleLoan);
app.post(version + "/loan", addLoan);
app.put(version + "/loan", updateLoan);
app.delete(version + "/loan/:id", deleteLoan);

// charge on loan
app.get(version + "/chargeOnLoan", viewChargeOnLoan);
app.get(version + "/chargeOnLoan/:id", singleChargeOnLoan);
app.post(version + "/chargeOnLoan", addChargeOnLoan);
app.put(version + "/chargeOnLoan", updateChargeOnLoan);
app.delete(version + "/chargeOnLoan/:id", deleteChargeOnLoan);

// saving charges routes
app.get(version + "/savingCharges", viewSavingCharges);
app.get(version + "/savingCharges/:id", singleSavingCharges);
app.post(version + "/savingCharges", addSavingCharges);
app.put(version + "/savingCharges", updateSavingCharges);
app.delete(version + "/savingCharges/:id", deleteSavingCharges);

// saving product routes
app.get(version + "/savingProduct", viewSavingProduct);
app.get(version + "/savingProduct/:id", singleSavingProduct);
app.post(version + "/savingProduct", addSavingProduct);
app.put(version + "/savingProduct", updateSavingProduct);
app.delete(version + "/savingProduct/:id", deleteSavingProduct);

// saving  routes
app.get(version + "/saving", viewSaving);
app.get(version + "/saving/:id", singleSaving);
app.post(version + "/saving", addSaving);
app.put(version + "/saving", updateSaving);
app.delete(version + "/saving/:id", deleteSaving);

// charge on saving  routes
app.get(version + "/chargeOnSaving", viewChargeOnSaving);
app.get(version + "/chargeOnSaving/:id", singleChargeOnSaving);
app.post(version + "/chargeOnSaving", addChargeOnSaving);
app.put(version + "/chargeOnSaving", updateChargeOnSaving);
app.delete(version + "/chargeOnSaving/:id", deleteChargeOnSaving);

// funds  routes
app.get(version + "/funds", viewFunds);
app.get(version + "/funds/:id", singleFunds);
app.post(version + "/funds", addFunds);
app.put(version + "/funds", updateFunds);
app.delete(version + "/funds/:id", deleteFunds);

app.listen(port, () => {
  console.log("Your Project Running Port is : " + port);
});
