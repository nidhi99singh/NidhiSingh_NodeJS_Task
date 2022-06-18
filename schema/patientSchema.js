const { body } = require('express-validator')
const patientSchema = [

    body('name').isLength({ min: 3 }).withMessage('name can not be less than 3 character'),
    body('address').isLength({ min: 10 }).withMessage('address must be atleast 10 charcter'),
    body('email').isEmail().withMessage('invalid email '),
    body('phoneNo').isMobilePhone().withMessage('invalid phone number, Enter 10 digit phone number with country code')
        .isLength({ min: 10, max: 12 }),

    body('password').isLength({ min: 8, max: 15 }).withMessage('password must be atleast 8 character and maximum 15 character long'),
    body('password').matches(/^(.*[a-z].*)$/).withMessage('password must have 1 lower case'),
    body('password').matches(/^(.*[A-Z].*)$/).withMessage('password must have 1 upper case'),
    body('password').matches(/^(.*\d.*)$/).withMessage('password must have 1 digit')
]

module.exports = patientSchema