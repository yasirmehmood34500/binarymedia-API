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

app.listen(
    port,
    () => { console.log("Your Project Running Port is : " + port) }
)
