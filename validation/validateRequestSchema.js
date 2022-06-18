const { validationResult } = require('express-validator')

function validateRequestSchema(req, res, next) {
    const errors = validationResult(req)
    if (!errors.isEmpty()) {
        return res.status(400).json({ error: errors.array() })
    }
    next()
}

module.exports = validateRequestSchema