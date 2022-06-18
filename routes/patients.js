const express = require('express')
const multer = require('multer')
const router = express.Router()
const path = require('path')
const con = require('../mysqlConnector')
const patientSchema = require('../schema/patientSchema')
const validateRequestSchema = require('../validation/validateRequestSchema')
const uuid = require('uuid')
const bcrypt = require('bcrypt')

const storage = multer.diskStorage({
    destination: './src/images/',
    filename: (req, file, cb) => {

        return cb(null, `${file.fieldname}_${Date.now()}${path.extname(file.originalname)}`)

    }
})
const upload = multer({
    storage: storage
})
const up = multer()

//add patient

router.post('/addPatient', upload.any(), patientSchema, validateRequestSchema, async (req, res) => {

    try {
        const body = req.body
        var value = body.password

        value = await bcrypt.hash(value, 10)
        let data = {
            fileSrc: req.files[0].filename,
            patientId: uuid.v1(),
            password: value,
            ...body
        }

        let query = 'select * from patient where email=?'
        con.query(query, body.email, (error, result) => {
            if (result.length > 0) {
                res.send({ message: 'user with this email already exist' })
            } else {

                let query = 'insert into patient set ? '
                con.query(query, data, (err) => {
                    if (err) {
                        res.send(err)
                    }

                    else
                        res.send({ message: 'patient added' })
                })

            }

        })
    } catch (error) {
        res.send(error)
    }
})

// Fetching all the patients in an order for a single psychiatrist (without photos).

router.get('/getPatient/:psycId', (req, res) => {
    const id = req.params.psycId
    let query = `select patientId,name,address,phoneNo,email,psycId from patient where psycId=${id}`
    con.query(query, (error, rows) => {
        if (error)
            res.send({ message: error })
        else
            res.send(rows)
    })
})

// Fetch the count of how many patients are registered for each psychiatrist in a hospital.
// This should return, hospital name, psychiatrist name, patients count.

router.get('/getPatientCount', (req, res) => {
    try {

        let query = ' select count(patient.psycId) as PatientCount,psychiatrist.firstName,psychiatrist.lastName,psychiatrist.hospitalName from psychiatrist inner join patient on psychiatrist.psycId=patient.psycId group by patient.psycId'
        con.query(query, (error, rows) => {
            if (error) {
                res.send(error)
                console.log(error)
            } else {
                res.send(rows)
            }
        })
    } catch (error) {
        res.send({ error: error })
    }

})

module.exports = router
