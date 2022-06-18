const express = require('express')
const con = require('../mysqlConnector')
const router = express.Router()
const validateRequestSchema = require('../validation/validateRequestSchema')
const psychiatristSchema = require('../schema/psychiatristSchema')
const uuid = require('uuid')
router.get('/', (req, res) => {

    res.send({ message: 'successful psychistrist api' })
})

//add psychiatrist

router.post('/addPsyc', psychiatristSchema, validateRequestSchema,
    (req, res) => {
        try {
            const body = req.body
            let data = {
                psycId: uuid.v1(),
                ...body

            }
            let query = 'insert into psychiatrist set ?'
            con.query(query, data, (error, result) => {

                if (error) {
                    res.send({ error: 'can not add row' })
                    throw error
                }

                else
                    res.send({ message: 'psychiatrist added successfully' })

            })
        } catch (error) {
            console.log(error)
        }
    })

module.exports = router