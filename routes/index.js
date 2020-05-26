var express = require('express');
var router = express.Router();
var cate = require('../controllers/cateController');
/* GET home page. */
router.get('/',cate.getCate);

module.exports = router;
