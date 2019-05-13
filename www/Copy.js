/* Global Cordova */

var exec = require("cordova/exec");

var Copy = function(){};

Copy.prototype.copy = function (code, successCallback, errorCallback) {
    exec(successCallback, errorCallback, "Copy", "copy", [code]);
};

module.exports = new Copy();
