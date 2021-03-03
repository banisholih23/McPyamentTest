const express = require('express')
const Route = express.Router()

const user = require('../controllers/user')

Route.get('/user', user.getAllUsers)

module.exports = Route