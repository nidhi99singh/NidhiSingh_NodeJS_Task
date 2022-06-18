
const express = require('express')
const con = require('../mysqlConnector')
const router = express.Router()
const uuid = require('uuid')

router.get('/', (req, res) => {
    res.send('successful')
})

//add hospital

router.post('/addHospital', (req, res) => {
    try {
        const body = req.body
        let data = { hospitalId: uuid.v1(), 
            hospitalName: body.hospitalName }

        let query = 'insert into hospital set ?'
        con.query(query, data, (error, result) => {
            if (error)
                throw error
            else
                res.send({ message: 'hospital data added successfully' })

        })

    } catch (error) {
        console.log(error)
    }

})

//get all hospitals

router.get('/allHospitals', (req, res) => {
    try {
        let query = 'select * from hospital'
        con.query(query, (err, result) => {
            if (err)
                throw err
            else
                res.send(result)
        })
    } catch (error) { console.log(error) }

})
module.exports = router