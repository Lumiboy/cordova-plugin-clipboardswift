var Copy = function(){};

Copy.prototype.copy = function (cp, successCallback, errorCallback) {
    cordova.exec(successCallback, errorCallback, "Copy", "copy", [cp]);
};

module.exports = new Copy();
