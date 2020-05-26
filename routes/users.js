let fs = require('fs');
var dbConfig = require('../util/dbconfig');
let multer = require("multer");
var express = require('express');
var router = express.Router();
var User = require('../controllers/UserController')
let upload = multer({dest:'./public/uploads/'}).single("file");
let moreUpload = multer({dest:'./public/uploads/'}).array("file",5);
router.post('/sendCode',  User.sendCode);
router.post('/sendCoreCode',  User.sendCoreCode);
router.post('/codePhoneLogin',User.codePhoneLogin);
router.post('/login',User.login);
router.post('/editUserInfo',User.editUserInfo);
router.post('/setPassword',User.setPassword);
router.post('/bindEmail',User.bindEmail);
router.post('/logout',User.logout);
router.post('/editUserImg',upload,User.editUserImg);
router.post('/uploadMoreImg',moreUpload,User.uploadMoreImg);
router.post('/publlish',User.publlish)
module.exports = router;
