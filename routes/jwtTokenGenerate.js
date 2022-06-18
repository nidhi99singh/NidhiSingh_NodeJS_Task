const jwt = require('jsonwebtoken')
const express = require('express')
const con = require('../mysqlConnector')
const router = express.Router()


//generate jwt token

router.get('/', (req, res) => {
    res.send('token success')
})
router.post('/generateToken', async (req, res) => {

    const firstName = req.body.firstName
    const lastName = req.body.lastName
    const psycId = req.body.psycId

    let query = `select * from psychiatrist where psycId= "${psycId}"`
    con.query(query, (error, data) => {
        var role1 = data[0].role
        console.log(role1)
    })

    // console.log(role1)
    jwt.sign({ firstName, lastName, psycId }, 'secretKey', (error, token) => {
        if (error) {
            res.send({ error: error })
        }
        else {
            res.send({ Token: token })
        }
    })
})

module.exports = router