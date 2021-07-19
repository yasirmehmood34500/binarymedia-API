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
} = require("./accounting/index");
const {
    viewActivityLogs,
    singleActivityLogs,
    addActivityLogs,
    updateActivityLogs,
    deleteActivityLogs,
} = require("./activityLogs");
const {
    viewAsset,
    singleAsset,
    addAsset,
    updateAsset,
    deleteAsset,
} = require("./asset");
const {
    viewAssetType,
    singleAssetType,
    addAssetType,
    updateAssetType,
    deleteAssetType,
} = require("./assetType");
const {
    viewBranches,
    singleBranches,
    addBranches,
    updateBranches,
    deleteBranches,
} = require("./branches/index");
const {
    viewBranchUser,
    singleBranchUser,
    addBranchUser,
    updateBranchUser,
    deleteBranchUser,
} = require("./branchUser");
const {
    viewClient,
    singleClient,
    addClient,
    updateClient,
    deleteClient,
} = require("./client");
const {
    viewCountry,
    singleCountry,
    addCountry,
    updateCountry,
    deleteCountry,
} = require("./country");
const {
    viewExpense,
    singleExpense,
    addExpense,
    updateExpense,
    deleteExpense,
} = require("./expense");
const {
    viewExpenseType,
    singleExpenseType,
    addExpenseType,
    updateExpenseType,
    deleteExpenseType,
} = require("./expenseType");
const { viewIncome, singleIncome, addIncome, updateIncome, deleteIncome } = require("./income");
const {
    viewIncomeType,
    singleIncomeType,
    addIncomeType,
    updateIncomeType,
    deleteIncomeType,
} = require("./incomeType");
const {
    viewPayroll,
    singlePayroll,
    addPayroll,
    updatePayroll,
    deletePayroll,
} = require("./payroll");
const {
    viewPayrollItem,
    singlePayrollItem,
    addPayrollItem,
    updatePayrollItem,
    deletePayrollItem,
} = require("./payrollItem");
const {
    viewPayrollTemplate,
    singlePayrollTemplate,
    addPayrollTemplate,
    updatePayrollTemplate,
    deletePayrollTemplate,
} = require("./payrollTemplate");
const {
    viewRole,
    singleRole,
    addRole,
    updateRole,
    deleteRole,
} = require("./role");
const {
    viewUser,
    singleUser,
    addUser,
    updateUser,
    deleteUser,
    viewUserRoleId,
} = require("./user");

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

app.listen(port, () => {
    console.log("Your Project Running Port is : " + port);
});
