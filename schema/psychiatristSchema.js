const { body } = require('express-validator')

const psychiatristSchema = [

    body('firstName').isLength({ min: 1, max: 20 }).withMessage('first name should be atleast 1 character and maximum 20 charcter'),
    body('lastName').isLength({ min: 1, max: 20 }).withMessage('last name should be atleast 1 character and maximum 20 charcter'),
    body('hospitalName').exists({ checkFalsy: true }).withMessage('please enter hospital name')
]

module.exports = psychiatristSchema