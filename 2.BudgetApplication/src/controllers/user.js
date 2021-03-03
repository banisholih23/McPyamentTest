const userModel = require('../models/user')
const qs = require('querystring')
const moment = require('moment')
const jwt = require('jsonwebtoken')
const bcrypt = require('bcryptjs')
const saltRounds = 10
const {APP_URL} = process.env

const getPage = (_page) => {
  const page = parseInt(_page)
  if (page && page > 0) {
    return page
  } else {
    return 1
  }
}

const getPerPage = (_perPage) => {
  const perPage = parseInt(_perPage)
  if (perPage && perPage > 0) {
    return perPage
  } else {
    return 5
  }
}

const getNextLinkQueryString = (page, totalPage, currentQuery) => {
  page = parseInt(page)
  if (page < totalPage) {
    const generatedPage = {
      page: page + 1
    }
    return qs.stringify({ ...currentQuery, ...generatedPage })
  } else {
    return null
  }
}

const getPrevLinkQueryString = (page, currentQuery) => {
  page = parseInt(page)
  if (page > 1) {
    const generatedPage = {
      page: page - 1
    }
    return qs.stringify({ ...currentQuery, ...generatedPage })
  } else {
    return null
  }
}

module.exports = {
  getAllUsers: async (request, response) => {
    const { page, limit, search, sort } = request.query
    const condition = {
      search,
      sort
    }

    const totalData = await userModel.getUserCount()
    const totalPage = Math.ceil(totalData / getPerPage(limit))
    const sliceStart = (getPage(page) * getPerPage(limit)) - getPerPage(limit)
    const sliceEnd = (getPage(page) * getPerPage(limit))
    
    const prevLink = getPrevLinkQueryString(getPage(page), request.query)
    const nextLink = getNextLinkQueryString(getPage(page), totalPage, request.query)

    const userData = await userModel.getAllUser(sliceStart, sliceEnd, condition)
    const data = {
      success: true,
      msg: 'List all users',
      data: userData,
      pageInfo: {
        page: getPage(page),
        totalPage,
        perPage: getPerPage(limit),
        totalData,
        nextLink: nextLink && `${process.env.APP_URL}/users?${nextLink}`,
        prevLink: prevLink && `${process.env.APP_URL}/users?${prevLink}`
      }
    }
    response.status(200).send(data)
  },
}