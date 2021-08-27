const router = require("express").Router();

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
  viewcollateralType,
  viewCollateralType,
  singleCollateralType,
  addCollateralType,
  updateCollateralType,
  deleteCollateralType,
} = require("./controller/collateralType");
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
const {
  viewFunds,
  singleFunds,
  addFunds,
  updateFunds,
  deleteFunds,
} = require("./controller/funds");
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
  loanApprove,
  loanDisburse,
  loanChangeOfficer,
  loanUndoDisburse,
  loanUndoApprovel,
  loanWithdraw,
  loanReject,
  calculateLoanInterest,
  loanWriteOff,
  loanUndoWriteOff,
  loanDisburseDis,
} = require("./controller/loan");
const {
  viewLoanChargeList,
  singleLoanChargeList,
  addLoanChargeList,
  updateLoanChargeList,
  deleteLoanChargeList,
  viewLoanChargeListLoanWise,
  loanChargeListWaiveCharge,
} = require("./controller/loanChargeList");
const {
  viewLoanCharges,
  singleLoanCharges,
  addLoanCharges,
  updateLoanCharges,
  deleteLoanCharges,
  viewLoanChargesCurrencyWise,
  viewLoanChargesCurrencyAndProductWise,
} = require("./controller/loanCharges");
const {
  viewLoanCollateralList,
  singleLoanCollateralList,
  addLoanCollateralList,
  updateLoanCollateralList,
  deleteLoanCollateralList,
  viewLoanCollateralListLoanWise,
} = require("./controller/loanCollateralList");
const {
  viewLoanFilesList,
  singleLoanFilesList,
  addLoanFilesList,
  updateLoanFilesList,
  deleteLoanFilesList,
  viewLoanFilesListLoanWise,
} = require("./controller/loanFilesList");
const {
  viewLoanGuarantorList,
  singleLoanGuarantorList,
  addLoanGuarantorList,
  updateLoanGuarantorList,
  deleteLoanGuarantorList,
  viewLoanGuarantorListLoanWise,
} = require("./controller/loanGuarantorList");
const {
  viewLoanNoteList,
  singleLoanNoteList,
  viewLoanNoteListLoanWise,
  addLoanNoteList,
  updateLoanNoteList,
  deleteLoanNoteList,
} = require("./controller/loanNoteList");
const {
  viewLoanProduct,
  singleLoanProduct,
  addLoanProduct,
  updateLoanProduct,
  deleteLoanProduct,
} = require("./controller/loanProduct");
const {
  viewLoanProductCharges,
  singleLoanProductCharges,
  addLoanProductCharges,
  updateLoanProductCharges,
  deleteLoanProductCharges,
  viewLoanProductChargesProductWise,
  viewLoanProductChargesLoanWise,
} = require("./controller/loanProductCharges");
const {
  viewLoanPurpose,
  singleLoanPurpose,
  addLoanPurpose,
  updateLoanPurpose,
  deleteLoanPurpose,
} = require("./controller/loanPurpose");
const {
  viewLoanRepaymentSchedule,
  singleLoanRepaymentSchedule,
  addLoanRepaymentSchedule,
  updateLoanRepaymentSchedule,
  deleteLoanRepaymentSchedule,
  viewLoanRepaymentScheduleLoanWise,
  deleteLoanRepaymentScheduleLoanWise,
} = require("./controller/loanRepaymentSchedule");
const {
  viewLoanTransactionList,
  singleLoanTransactionList,
  addLoanTransactionList,
  updateLoanTransactionList,
  deleteLoanTransactionList,
  viewLoanTransactionListLoanWise,
  deleteLoanTransactionListLoanWise,
  deleteLoanTransactionListWriteOffLoanWise,
} = require("./controller/loanTransactionList");
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
const {
  viewPayrollPayment,
  singlePayrollPayment,
  addPayrollPayment,
  updatePayrollPayment,
  deletePayrollPayment,
  payrollPaymentPayrollWise,
  deletePayrollPaymentPayrollWise,
} = require("./controller/payrollPayment");
const {
  viewPayrollTemplate,
  singlePayrollTemplate,
  addPayrollTemplate,
  updatePayrollTemplate,
  deletePayrollTemplate,
} = require("./controller/payrollTemplate");
const {
  viewPayrollTemplateItemList,
  singlePayrollTemplateItemList,
  addPayrollTemplateItemList,
  updatePayrollTemplateItemList,
  deletePayrollTemplateItemList,
  viewPayrollTemplateItemListPayrollTemplateWise,
} = require("./controller/payrollTemplateItemList");
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

router.get("/", (req, res) => {
  res.send("BinaryMdeia API");
});
var version = "/v1";

// accounting routes
router.get(version + "/accounting", viewChartOfAccount);
router.get(version + "/accounting/:id", singleChartOfAccount);
router.post(version + "/accounting", addChartOfAccount);
router.put(version + "/accounting", updateChartOfAccount);
router.delete(version + "/accounting/:id", deleteChartOfAccount);

// journal entries routes
router.get(version + "/journalEntry", viewJournalEntries);
router.get(version + "/journalEntry/:id", singleJournalEntries);
router.post(version + "/journalEntry", addJournalEntries);
router.put(version + "/journalEntry", updateJournalEntries);
router.delete(version + "/journalEntry/:id", deleteJournalEntries);

// branches routes
router.get(version + "/branches", viewBranches);
router.get(version + "/branches/:id", singleBranches);
router.post(version + "/branches", addBranches);
router.put(version + "/branches", updateBranches);
router.delete(version + "/branches/:id", deleteBranches);

// branch user routes
router.get(version + "/branchUser", viewBranchUser);
router.get(version + "/branchUser/:id", singleBranchUser);
router.post(version + "/branchUser", addBranchUser);
router.put(version + "/branchUser", updateBranchUser);
router.delete(version + "/branchUser/:id", deleteBranchUser);

// client routes
router.get(version + "/client", viewClient);
router.get(version + "/client/:id", singleClient);
router.post(version + "/client", addClient);
router.put(version + "/client", updateClient);
router.delete(version + "/client/:id", deleteClient);

// country routes
router.get(version + "/country", viewCountry);
router.get(version + "/country/:id", singleCountry);
router.post(version + "/country", addCountry);
router.put(version + "/country", updateCountry);
router.delete(version + "/country/:id", deleteCountry);

// time zone routes
router.get(version + "/timeZone", viewTimeZone);
router.get(version + "/timeZone/:id", singleTimeZone);
router.post(version + "/timeZone", addTimeZone);
router.put(version + "/timeZone", updateTimeZone);
router.delete(version + "/timeZone/:id", deleteTimeZone);

// payroll template routes
router.get(version + "/payrollTemplate", viewPayrollTemplate);
router.get(version + "/payrollTemplate/:id", singlePayrollTemplate);
router.post(version + "/payrollTemplate", addPayrollTemplate);
router.put(version + "/payrollTemplate", updatePayrollTemplate);
router.delete(version + "/payrollTemplate/:id", deletePayrollTemplate);

// payroll item routes
router.get(version + "/payrollItem", viewPayrollItem);
router.get(version + "/payrollItem/:id", singlePayrollItem);
router.post(version + "/payrollItem", addPayrollItem);
router.put(version + "/payrollItem", updatePayrollItem);
router.delete(version + "/payrollItem/:id", deletePayrollItem);

// payroll payment routes
router.get(version + "/payrollPayment", viewPayrollPayment);
router.get(version + "/payrollPayment/:id", singlePayrollPayment);
router.get(
  version + "/payrollPaymentPayrollWise/:id",
  payrollPaymentPayrollWise
);
router.post(version + "/payrollPayment", addPayrollPayment);
router.put(version + "/payrollPayment", updatePayrollPayment);
router.delete(version + "/payrollPayment/:id", deletePayrollPayment);
router.delete(version + "/payrollPaymentPayrollWise/:payrollId", deletePayrollPaymentPayrollWise);


// payroll routes
router.get(version + "/payroll", viewPayroll);
router.get(version + "/payroll/:id", singlePayroll);
router.post(version + "/payroll", addPayroll);
router.put(version + "/payroll", updatePayroll);
router.delete(version + "/payroll/:id", deletePayroll);

// expense type routes
router.get(version + "/expenseType", viewExpenseType);
router.get(version + "/expenseType/:id", singleExpenseType);
router.post(version + "/expenseType", addExpenseType);
router.put(version + "/expenseType", updateExpenseType);
router.delete(version + "/expenseType/:id", deleteExpenseType);

// expense routes
router.get(version + "/expense", viewExpense);
router.get(version + "/expense/:id", singleExpense);
router.post(version + "/expense", addExpense);
router.put(version + "/expense", updateExpense);
router.delete(version + "/expense/:id", deleteExpense);

// income type routes
router.get(version + "/incomeType", viewIncomeType);
router.get(version + "/incomeType/:id", singleIncomeType);
router.post(version + "/incomeType", addIncomeType);
router.put(version + "/incomeType", updateIncomeType);
router.delete(version + "/incomeType/:id", deleteIncomeType);

// general setting routes
router.get(version + "/generalSetting", viewGeneralSetting);
router.get(version + "/generalSetting/:id", singleGeneralSetting);
router.get(version + "/generalSettingUser/:id", singleGeneralSettingUser);
router.put(version + "/generalSettingUser", updateGeneralSettingUser);
router.post(version + "/generalSetting", addGeneralSetting);
router.put(version + "/generalSetting", updateGeneralSetting);
router.delete(version + "/generalSetting/:id", deleteGeneralSetting);

// income  routes
router.get(version + "/income", viewIncome);
router.get(version + "/income/:id", singleIncome);
router.post(version + "/income", addIncome);
router.put(version + "/income", updateIncome);
router.delete(version + "/income/:id", deleteIncome);

// activity logs routes
router.get(version + "/activityLogs", viewActivityLogs);
router.get(version + "/activityLogs/:id", singleActivityLogs);
router.post(version + "/activityLogs", addActivityLogs);
router.put(version + "/activityLogs", updateActivityLogs);
router.delete(version + "/activityLogs/:id", deleteActivityLogs);

// role routes
router.get(version + "/role", viewRole);
router.get(version + "/role/:id", singleRole);
router.post(version + "/role", addRole);
router.put(version + "/role", updateRole);
router.delete(version + "/role/:id", deleteRole);

// user routes
router.get(version + "/user", viewUser);
router.get(version + "/user/:id", singleUser);
router.get(version + "/userRoleId/:role_id", viewUserRoleId);
router.post(version + "/user", addUser);
router.put(version + "/user", updateUser);
router.delete(version + "/user/:id", deleteUser);

// asset type routes
router.get(version + "/assetType", viewAssetType);
router.get(version + "/assetType/:id", singleAssetType);
router.post(version + "/assetType", addAssetType);
router.put(version + "/assetType", updateAssetType);
router.delete(version + "/assetType/:id", deleteAssetType);

// asset  routes
router.get(version + "/asset", viewAsset);
router.get(version + "/asset/:id", singleAsset);
router.post(version + "/asset", addAsset);
router.put(version + "/asset", updateAsset);
router.delete(version + "/asset/:id", deleteAsset);

// client type routes
router.get(version + "/clientType", viewClientType);
router.get(version + "/clientType/:id", singleClientType);
router.post(version + "/clientType", addClientType);
router.put(version + "/clientType", updateClientType);
router.delete(version + "/clientType/:id", deleteClientType);

// titles routes
router.get(version + "/title", viewTitle);
router.get(version + "/title/:id", singleTitle);
router.post(version + "/title", addTitle);
router.put(version + "/title", updateTitle);
router.delete(version + "/title/:id", deleteTitle);

// titles routes
router.get(version + "/collateralType", viewCollateralType);
router.get(version + "/collateralType/:id", singleCollateralType);
router.post(version + "/collateralType", addCollateralType);
router.put(version + "/collateralType", updateCollateralType);
router.delete(version + "/collateralType/:id", deleteCollateralType);

// professions routes
router.get(version + "/profession", viewProfessions);
router.get(version + "/profession/:id", singleProfessions);
router.post(version + "/profession", addProfessions);
router.put(version + "/profession", updateProfessions);
router.delete(version + "/profession/:id", deleteProfessions);

// currency routes
router.get(version + "/currency", viewCurrency);
router.get(version + "/currency/:id", singleCurrency);
router.post(version + "/currency", addCurrency);
router.put(version + "/currency", updateCurrency);
router.delete(version + "/currency/:id", deleteCurrency);

// paymentType routes
router.get(version + "/paymentType", viewPaymentType);
router.get(version + "/paymentType/:id", singlePaymentType);
router.post(version + "/paymentType", addPaymentType);
router.put(version + "/paymentType", updatePaymentType);
router.delete(version + "/paymentType/:id", deletePaymentType);

// loanPurpose routes
router.get(version + "/loanPurpose", viewLoanPurpose);
router.get(version + "/loanPurpose/:id", singleLoanPurpose);
router.post(version + "/loanPurpose", addLoanPurpose);
router.put(version + "/loanPurpose", updateLoanPurpose);
router.delete(version + "/loanPurpose/:id", deleteLoanPurpose);

// payroll template item list routes
router.get(version + "/payrollTemplateItemList", viewPayrollTemplateItemList);
router.get(
  version + "/payrollTemplateItemList/:id",
  singlePayrollTemplateItemList
);
router.get(
  version + "/payrollTemplateItemListPayrollTemplateWise/:payrollTemplateId",
  viewPayrollTemplateItemListPayrollTemplateWise
);

router.post(version + "/payrollTemplateItemList", addPayrollTemplateItemList);
router.put(version + "/payrollTemplateItemList", updatePayrollTemplateItemList);
router.delete(
  version + "/payrollTemplateItemList/:id",
  deletePayrollTemplateItemList
);

// loan charge list routes
router.get(version + "/loanChargeList", viewLoanChargeList);
router.get(version + "/loanChargeList/:id", singleLoanChargeList);
router.post(version + "/loanChargeListWaiveCharge", loanChargeListWaiveCharge);
router.get(
  version + "/loanChargeListLoanWise/:loan_id",
  viewLoanChargeListLoanWise
);
router.post(version + "/loanChargeList", addLoanChargeList);
router.put(version + "/loanChargeList", updateLoanChargeList);
router.delete(version + "/loanChargeList/:id", deleteLoanChargeList);

// loan product routes
router.get(version + "/loanProduct", viewLoanProduct);
router.get(version + "/loanProduct/:id", singleLoanProduct);
router.post(version + "/loanProduct", addLoanProduct);
router.put(version + "/loanProduct", updateLoanProduct);
router.delete(version + "/loanProduct/:id", deleteLoanProduct);

// loan guarantor routes
router.get(version + "/loanGuarantorList", viewLoanGuarantorList);
router.get(version + "/loanGuarantorList/:id", singleLoanGuarantorList);
router.get(
  version + "/loanGuarantorListLoanWise/:loan_id",
  viewLoanGuarantorListLoanWise
);
router.post(version + "/loanGuarantorList", addLoanGuarantorList);
router.put(version + "/loanGuarantorList", updateLoanGuarantorList);
router.delete(version + "/loanGuarantorList/:id", deleteLoanGuarantorList);

// loan files routes
router.get(version + "/loanfilesList", viewLoanFilesList);
router.get(version + "/loanfilesList/:id", singleLoanFilesList);
router.get(
  version + "/loanfilesListLoanWise/:loan_id",
  viewLoanFilesListLoanWise
);
router.post(version + "/loanfilesList", addLoanFilesList);
router.put(version + "/loanfilesList", updateLoanFilesList);
router.delete(version + "/loanfilesList/:id", deleteLoanFilesList);

// loan collateral routes
router.get(version + "/loanCollateralList", viewLoanCollateralList);
router.get(version + "/loanCollateralList/:id", singleLoanCollateralList);
router.get(
  version + "/loanCollateralListLoanWise/:loan_id",
  viewLoanCollateralListLoanWise
);
router.post(version + "/loanCollateralList", addLoanCollateralList);
router.put(version + "/loanCollateralList", updateLoanCollateralList);
router.delete(version + "/loanCollateralList/:id", deleteLoanCollateralList);

// loan tranaction routes
router.get(version + "/loanTransactionList", viewLoanTransactionList);
router.get(version + "/loanTransactionList/:id", singleLoanTransactionList);
router.post(version + "/loanTransactionList", addLoanTransactionList);
router.put(version + "/loanTransactionList", updateLoanTransactionList);
router.delete(version + "/loanTransactionList/:id", deleteLoanTransactionList);
router.get(
  version + "/loanTransactionListLoanWise/:loan_id",
  viewLoanTransactionListLoanWise
);
router.delete(
  version + "/loanTransactionListLoanWise/:loan_id",
  deleteLoanTransactionListLoanWise
);
router.delete(
  version + "/loanTransactionListWriteOffLoanWise/:loan_id",
  deleteLoanTransactionListWriteOffLoanWise
);

// loan note routes
router.get(version + "/loanNoteList", viewLoanNoteList);
router.get(version + "/loanNoteList/:id", singleLoanNoteList);
router.get(
  version + "/loanNoteListLoanWise/:loan_id",
  viewLoanNoteListLoanWise
);
router.post(version + "/loanNoteList", addLoanNoteList);
router.put(version + "/loanNoteList", updateLoanNoteList);
router.delete(version + "/loanNoteList/:id", deleteLoanNoteList);

// loan product charges routes
router.get(version + "/loanProductCharges", viewLoanProductCharges);
router.get(
  version + "/loanProductChargesProductWise/:loan_products_id",
  viewLoanProductChargesProductWise
);
router.get(
  version + "/loanProductChargesLoanWise/:loan_id",
  viewLoanProductChargesLoanWise
);
router.get(version + "/loanProductCharges/:id", singleLoanProductCharges);
router.post(version + "/loanProductCharges", addLoanProductCharges);
router.put(version + "/loanProductCharges", updateLoanProductCharges);
router.delete(version + "/loanProductCharges/:id", deleteLoanProductCharges);

// loan charges routes
router.get(version + "/loanCharges", viewLoanCharges);
router.get(version + "/loanCharges/:id", singleLoanCharges);
router.get(
  version + "/loanChargesCurrencyWise/:id",
  viewLoanChargesCurrencyWise
);
router.get(
  version + "/loanChargesCurrencyProductWise/:loan_products_id/:currency_id",
  viewLoanChargesCurrencyAndProductWise
);
router.post(version + "/loanCharges", addLoanCharges);
router.put(version + "/loanCharges", updateLoanCharges);
router.delete(version + "/loanCharges/:id", deleteLoanCharges);

// loan  routes
router.get(version + "/loan", viewLoan);
router.get(version + "/loan/:id", singleLoan);
router.post(version + "/loan", addLoan);
router.post(version + "/loanApprove", loanApprove);
router.post(version + "/loanWriteOff", loanWriteOff);
router.post(version + "/loanDisburse", loanDisburse);
router.post(version + "/loanDisburseDis", loanDisburseDis);
router.post(version + "/loanChangeOfficer", loanChangeOfficer);
router.post(version + "/loanUndoDisburse", loanUndoDisburse);
router.post(version + "/loanUndoApprovel", loanUndoApprovel);
router.post(version + "/loanUndoWriteOff", loanUndoWriteOff);
router.post(version + "/loanWithdraw", loanWithdraw);
router.post(version + "/loanReject", loanReject);
router.put(version + "/loan", updateLoan);
router.delete(version + "/loan/:id", deleteLoan);
router.get(version + "/calculateLoanInterest/:id", calculateLoanInterest);

// charge on loan
router.get(version + "/chargeOnLoan", viewChargeOnLoan);
router.get(version + "/chargeOnLoan/:id", singleChargeOnLoan);
router.post(version + "/chargeOnLoan", addChargeOnLoan);
router.put(version + "/chargeOnLoan", updateChargeOnLoan);
router.delete(version + "/chargeOnLoan/:id", deleteChargeOnLoan);

// loan repayment schedule routes
router.get(version + "/loanRepaymentSchedule", viewLoanRepaymentSchedule);
router.get(version + "/loanRepaymentSchedule/:id", singleLoanRepaymentSchedule);
router.get(
  version + "/loanRepaymentScheduleLoanWise/:loan_id",
  viewLoanRepaymentScheduleLoanWise
);
router.post(version + "/loanRepaymentSchedule", addLoanRepaymentSchedule);
router.put(version + "/loanRepaymentSchedule", updateLoanRepaymentSchedule);
router.delete(
  version + "/loanRepaymentSchedule/:id",
  deleteLoanRepaymentSchedule
);
router.delete(
  version + "/loanRepaymentScheduleLoanWise/:loan_id",
  deleteLoanRepaymentScheduleLoanWise
);

// saving charges routes
router.get(version + "/savingCharges", viewSavingCharges);
router.get(version + "/savingCharges/:id", singleSavingCharges);
router.post(version + "/savingCharges", addSavingCharges);
router.put(version + "/savingCharges", updateSavingCharges);
router.delete(version + "/savingCharges/:id", deleteSavingCharges);

// saving product routes
router.get(version + "/savingProduct", viewSavingProduct);
router.get(version + "/savingProduct/:id", singleSavingProduct);
router.post(version + "/savingProduct", addSavingProduct);
router.put(version + "/savingProduct", updateSavingProduct);
router.delete(version + "/savingProduct/:id", deleteSavingProduct);

// saving  routes
router.get(version + "/saving", viewSaving);
router.get(version + "/saving/:id", singleSaving);
router.post(version + "/saving", addSaving);
router.put(version + "/saving", updateSaving);
router.delete(version + "/saving/:id", deleteSaving);

// charge on saving  routes
router.get(version + "/chargeOnSaving", viewChargeOnSaving);
router.get(version + "/chargeOnSaving/:id", singleChargeOnSaving);
router.post(version + "/chargeOnSaving", addChargeOnSaving);
router.put(version + "/chargeOnSaving", updateChargeOnSaving);
router.delete(version + "/chargeOnSaving/:id", deleteChargeOnSaving);

// funds  routes
router.get(version + "/funds", viewFunds);
router.get(version + "/funds/:id", singleFunds);
router.post(version + "/funds", addFunds);
router.put(version + "/funds", updateFunds);
router.delete(version + "/funds/:id", deleteFunds);

module.exports = router;
