const exp = require('constants')
const express = require('express')
const con = require('./mysqlConnector')
const multer = require('multer')
const app = express()
const PORT = 3000

app.listen(PORT, () => {
    console.log(`server started on port : ${PORT}`)
})

app.use(express.json())
app.use(express.urlencoded({ extended: true }))

con.on('connect', (err) => {

    if (err)
        throw console.error(err);
    else
        console.log('MYSQL Connected..')
})

var hospitalRoutes = require('./routes/hospital')
app.use('/api/hospital', hospitalRoutes)

var psychiatristRoutes = require('./routes/psychiatrist')
app.use('/api/psychiatrist', psychiatristRoutes)

var patientRoutes = require('./routes/patients')
app.use('/api/patient', patientRoutes)

var tokenRoutes = require('./routes/jwtTokenGenerate')
app.use('/api/token', tokenRoutes)