var chai = require("chai");
var expect= chai.expect;

var indexOf = function (arr, value) {
	return arr.indexOf(value);
};

var testArr = [5,6, 7]
/*
// Original way or Assertions
var testArr = [5,6, 7]
assert.equal(-1, indexOf(testArr, 8), "Array indexOf should return -1 for value not in Array");
*/
/*
// Original Mocha
describe("Array", function() {
	assert.equal(-1, indexOf(testArr, 7);
		"IndexOf should return -1 for value not in Array");
	})



/* refactoring #1
describe("Array", function() {
	it ("IndexOf should return -1 for value not in Array", function (){
	assert.equal(-1, indexOf(testArr, 7)); 
		});
	})

*/

// refactoring #2 

describe("Array", function() {
	describe("indexOf", function () {
	it ("should return -1 for value not in Array", function (){
	assert.equal(-1, indexOf(testArr, 7)); 
		});
	})
})


var chai = require("chai");
var expect= chai.expect;