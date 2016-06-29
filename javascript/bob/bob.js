//
// This is only a SKELETON file for the "Bob" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var Bob = function() {};

Bob.prototype.hey = function(input) {
    if (isAllCaps(input)) {
      return 'Whoa, chill out!'
    } else if (isQuestion(input)) {
      return 'Sure.'
    } else if (isEmpty(input)) {
      return 'Fine. Be that way!'
    } else {
      return 'Whatever.'
    }
};

function isAllCaps(str) {
  var isNotValid = /^[0-9, ?]*$/.test(str);
  return str === str.toUpperCase() && !isNotValid
}

function isQuestion(str) {
  return str.slice(-1) === '?'
}

function isEmpty(str) {
  return str.replace(/^\s+|\s+$/g, '').length == 0;
}

module.exports = Bob;
