let Follow = require('../controllers/FollowController');
var express = require('express');
var router = express.Router();
router.post('/follow',Follow.follow);

module.exports = router;