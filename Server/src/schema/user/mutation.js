import {
  GraphQLObjectType,
  GraphQLString,
  GraphQLInt,
  GraphQLList,
  GraphQLNonNull
} from 'graphql'

import { UserError } from 'graphql-errors'
import validator from 'validator'
import md5 from 'md5'
import permission from '../permission'
import ERRORS from '../error'
import { userType, tokenType } from './type'

/**
 * 用户注册
 */
let signup = {
    type: userType,
    args: {
        name: {
            type: new GraphQLNonNull(GraphQLString)
        },
        email: {
            type: new GraphQLNonNull(GraphQLString)
        },
        password: {
            type: new GraphQLNonNull(GraphQLString)
        }
    },
    async resolve(parentValue, {name, email, password}, ctx) {
        // await permission(ctx, 'signup')
        if (email == null || email.length == 0) {
            throw new UserError(ERRORS[401001])
        }
        if (name == null || name.length == 0) {
            throw new UserError(ERRORS[401002])
        }
        if (!validator.isLength(password, {min: 8})) {
            throw new UserError(ERRORS[401003])
        }
        let isExist = await ctx.models.User.findOne({
            where: {
                name: name
            }
        })
        if (isExist) {
            throw new UserError(ERRORS[401004])
        }
        if (!validator.isEmail(email)) {
            throw new UserError(ERRORS[401005])
        }
        isExist = await ctx.models.User.findOne({
            where: {
                email: email
            }
        })
        if (isExist) {
            throw new UserError(ERRORS[401006])
        }
        let ip = ctx.request.ip
        let ips = ip.split(':')
        if(ips.length > 0) {
            ip = ips[ips.length-1]
        }
        let user = await ctx.models.User.create({
            email: email,
            password: md5(password),
            name: name,
            nick: name,
            lastLoginIp: ip
        })
        return user
    }
}

/**
 * 用户登录
 */
let signin = {
    type: tokenType,
    args: {
        account: {
            type: new GraphQLNonNull(GraphQLString)
        },
        password: {
            type: new GraphQLNonNull(GraphQLString)
        }
    },
    async resolve(parentValue, {account, password}, ctx) {
        if (account == null || account.length == 0) {
            throw new UserError(ERRORS[401011])
        }
        if (!validator.isEmail(account)) {
            let user = await ctx.models.User.findOne({
                where: {
                    name: account
                }
            })
            if (!user) {
                throw new UserError(ERRORS[401012])
            }
            // password = md5(password)
            // if (!user.checkPassword(password)) {
            //     throw new UserError(ERRORS[401014])
            // }
            password = md5(password)
            if (user.password != password) {
                throw new UserError(ERRORS[401014])
            }
            return user
        } else {
            let user = await ctx.models.User.findOne({
                where: {
                    email: account
                }
            })
            if (!user) {
                throw new UserError(ERRORS[401013])
            }
            // password = md5(password)
            // if (!user.checkPassword(password)) {
            //     throw new UserError(ERRORS[401014])
            // }
            password = md5(password)
            if (user.password != password) {
                throw new UserError(ERRORS[401014])
            }
            return user
        }
    }
}

export default {
    signup: signup,
    signin: signin
}