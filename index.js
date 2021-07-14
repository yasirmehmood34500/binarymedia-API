const express = require('express')
const app = express()
require('dotenv').config()
const port = process.env.PORT
app.use(express.json())
require('./db')

// functions
const { viewChartOfAccount, singleChartOfAccount, addChartOfAccount, deleteChartOfAccount, updateChartOfAccount, updateJournalEntries, addJournalEntries, viewJournalEntries, singleJournalEntries, deleteJournalEntries } = require('./accounting/index')
const { viewBranches, singleBranches, addBranches, updateBranches, deleteBranches } = require('./branches/index')
const { viewClient, singleClient, addClient, updateClient, deleteClient } = require('./client')
const { viewExpense, singleExpense, addExpense, updateExpense, deleteExpense } = require('./expense')
const { viewExpenseType, singleExpenseType, addExpenseType, updateExpenseType, deleteExpenseType } = require('./expenseType')
const { viewIncomeType, singleIncomeType, addIncomeType, updateIncomeType, deleteIncomeType } = require('./incomeType')
const { viewPayroll, singlePayroll, addPayroll, updatePayroll, deletePayroll } = require('./payroll')
const { viewPayrollItem, singlePayrollItem, addPayrollItem, updatePayrollItem, deletePayrollItem } = require('./payrollItem')
const { viewPayrollTemplate, singlePayrollTemplate, addPayrollTemplate, updatePayrollTemplate, deletePayrollTemplate } = require('./payrollTemplate')


// routes

app.get('/', (req, res) => {
    res.send("BinaryMdeia API")
})
var version = "/v1"


// accounting routes
app.post(version + '/accounting', addChartOfAccount)
app.get(version + '/accounting', viewChartOfAccount)
app.get(version + '/accounting/:id', singleChartOfAccount)
app.delete(version + '/accounting/:id', deleteChartOfAccount)
app.put(version + '/accounting', updateChartOfAccount)

// journal entries routes
app.post(version + '/journalEntry', addJournalEntries)
app.get(version + '/journalEntry', viewJournalEntries)
app.get(version + '/journalEntry/:id', singleJournalEntries)
app.delete(version + '/journalEntry/:id', deleteJournalEntries)
app.put(version + '/journalEntry', updateJournalEntries)

// branches routes
app.get(version + '/branches', viewBranches)
app.get(version + '/branches/:id', singleBranches)
app.post(version + '/branches', addBranches)
app.put(version + '/branches', updateBranches)
app.delete(version + '/branches/:id', deleteBranches)

// client routes
app.get(version + '/client', viewClient)
app.get(version + '/client/:id', singleClient)
app.post(version + '/client', addClient)
app.put(version + '/client', updateClient)
app.delete(version + '/client/:id', deleteClient)

// payroll template routes
app.get(version + '/payrollTemplate', viewPayrollTemplate)
app.get(version + '/payrollTemplate/:id', singlePayrollTemplate)
app.post(version + '/payrollTemplate', addPayrollTemplate)
app.put(version + '/payrollTemplate', updatePayrollTemplate)
app.delete(version + '/payrollTemplate/:id', deletePayrollTemplate)

// payroll item routes
app.get(version + '/payrollItem', viewPayrollItem)
app.get(version + '/payrollItem/:id', singlePayrollItem)
app.post(version + '/payrollItem', addPayrollItem)
app.put(version + '/payrollItem', updatePayrollItem)
app.delete(version + '/payrollItem/:id', deletePayrollItem)

// payroll routes
app.get(version + '/payroll', viewPayroll)
app.get(version + '/payroll/:id', singlePayroll)
app.post(version + '/payroll', addPayroll)
app.put(version + '/payroll', updatePayroll)
app.delete(version + '/payroll/:id', deletePayroll)

// expense type routes
app.get(version + '/expenseType', viewExpenseType)
app.get(version + '/expenseType/:id', singleExpenseType)
app.post(version + '/expenseType', addExpenseType)
app.put(version + '/expenseType', updateExpenseType)
app.delete(version + '/expenseType/:id', deleteExpenseType)

// expense routes
app.get(version + '/expense', viewExpense)
app.get(version + '/expense/:id', singleExpense)
app.post(version + '/expense', addExpense)
app.put(version + '/expense', updateExpense)
app.delete(version + '/expense/:id', deleteExpense)

// expense type routes
app.get(version + '/incomeType', viewIncomeType)
app.get(version + '/incomeType/:id', singleIncomeType)
app.post(version + '/incomeType', addIncomeType)
app.put(version + '/incomeType', updateIncomeType)
app.delete(version + '/incomeType/:id', deleteIncomeType)

app.listen(
    port,
    () => { console.log("Your Project Running Port is : " + port) }
)
