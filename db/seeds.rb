# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


randall = User.create({username: "randall", password: "111"})

# From 1 - 10 are all Beginner Problems

beginner1 = randall.codes.create({title: "End Of Input", level: "Beginner", question: "Which code outputs: Error Message: Unexpected end of input", correctCode: "var time = 5; <br><br>if (time < 20) {<br>  console.log('Good day'); <br>}", wrongCode: "var time = 5; <br><br>if (time < 20) { <br>  console.log('Good day');<br><br>", hint: "Check the control flow!"})
beginner2 = randall.codes.create({title: "Unexpected Identifier", level: "Beginner", question: "Which code outputs: Error Message: Unexpected identifier", correctCode: "var time = 5; <br><br>if (time < 1) { <br>  console.log(“true”) <br>};", wrongCode: "var time = 5; <br><br>if time < 1 { <br>  console.log(“true”) <br>};", hint: "Look for the syntax error!"})
beginner3 = randall.codes.create({title: "Modulus", level: "Beginner", question: "Which code outputs 0?", correctCode: "console.log(64%2);", wrongCode: "console.log(64%3);", hint:"The modulus operator(%) in computer languages is simply the remainder."})
beginner4 = randall.codes.create({title: "SubString", level: "Beginner", question: "Which code outputs 'derf'?", correctCode: "console.log('wonderful day'.substring(3,7));", wrongCode: " console.log('wonderful day'.substring(4,7));", hint: "The substring() method extracts the characters from a string, between two specified indices, and returns the new sub string."})
beginner5 = randall.codes.create({title: "Infinite Loop", level: "Beginner", question: "Which code outputs an infinite loop?", correctCode: "var i = 5;<br><br>while (i < 51) { <br>  console.log(i); <br>}", wrongCode: "for (var i = 5; i < 51; i+=5) {<br>  console.log(i);<br>}<br><br><br>", hint: "Where does/doesn't it increment?"})
beginner6 = randall.codes.create({title: ">=", level: "Beginner", question: "Which code outputs: Error: Unexpected token >=", correctCode: "for (var i = 10, i >= 0, i--) {<br>  console.log(i); <br>}", wrongCode: "for (var i = 10; i >= 0, i--) {<br>  console.log(i); <br>}", hint: "Which error comes first?"})
beginner7 = randall.codes.create({title: "And, OR", level: "Beginner", question: "Which code outputs True?", correctCode: "var hungry = true;<br>var full = false;<br><br>if (hungry && (full || hungry)) { <br>  console.log('true'); <br>}", wrongCode: "var hungry = true; <br>var full = false;<br><br>if (hungry && (full && hungry)) {<br>  console.log('true'); <br>}", hint: "True && True === True, True && False === False, True | | False === True"})
beginner8 = randall.codes.create({title: "Switch Case", level: "Beginner", question: "Which code console logs both 15 20?", correctCode: "switch(5+10) {<br>  case 15: <br>    console.log(’15'); <br>  case 20: <br>    console.log(’20'); <br>  break;<br>  default: <br>    console.log(‘nothing'); <br>}", wrongCode: "switch(5+10) { <br>  case 15: <br>    console.log(’15'); <br>  case 20:<br>    console.log(’20');<br>  default:<br>    console.log(‘nothing'); <br>}<br><br>", hint: "Both answers do not console log 15 ONLY."})
beginner9 = randall.codes.create({title: "Floats", level: "Beginner", question: "Which code returns false?", correctCode: "var a = 0.1, b = 0.2; <br><br>console.log(a + b == 0.3);", wrongCode: "var a = 0.1, b = 0.2; <br><br>console.log('0.1 + 0.2 = ', a + b);", hint: "Arithmetic operations are not as precise as you’d think due to the way floating point numbers are represented in memory."})
beginner10 = randall.codes.create({title: "Variable Hoisting", level: "Beginner", question: "What will <code> for(var i = 0; i < 10; i++) { } </code> output?", correctCode: "10", wrongCode: "undefined", hint: "In JavaScript, though, this is not the case and the variable i remains in scope even after the for loop has completed, retaining its last value after exiting the loop. (variable hoisting)"})


# From 11 to 20 are all Intermediate Problems

intermediate11 = randall.codes.create({title: "FizzBuzz", level: "Intermediate", question: "Which code outputs: 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz?", correctCode: "for (var i = 1; i <= 10; i++) {<br>  var all = '';<br>  if (i % 3 === 0) all += 'Fizz';<br>  if (i % 5 === 0) all += 'Buzz';<br>  console.log(all || i)<br>}", wrongCode: "for (var i = 1; i <= 10; i++) {<br>  var all = '';<br>  if (i % 5 === 0) all += 'Fizz';<br>  if (i % 3 === 0) all += 'Buzz';<br>  console.log(all || i)<br>}", hint: "FizzBuzz!  Which numbers are modulus of 3 and 5?"})
intermediate12 = randall.codes.create({title: "Factorial", level: "Intermediate", question: "Which code returns a Factorial of 5?", correctCode: "function FactorialOne(num) {<br>  var newNum = num;<br>  for(var i = num; i > 1; i--){<br>    newNum *= num-1;<br>    num --;<br>  }<br>  return newNum;<br>}<br><br>FactorialOne(5)", wrongCode: "function FactorialTwo(num) {<br>  var newNum=1;<br>  for (var i = 2; i < num; i++)<br>    newNum = newNum * i;<br>    return newNum;<br>  }<br>}<br><br><br>FactorialTwo(5)", hint: "5! = 4 * 3 * 2 *1"})
intermediate13 = randall.codes.create({title: "Fibonacci", level: "Intermediate", question: "Which code returns Fibonacci of 10?  Fib(10) = 55?", correctCode: "var fib = function(n) {<br>  if(n<=2) {<br>    return 1 <br>  } else {<br>    return fib(n-1) + fib(n-2);<br>  }<br>}<br><br>fib(10)", wrongCode: "var fib = function(n) {<br>  if(n<=1) {<br>    return 1 <br>  } else {<br>    return fib(n-1) + fib(n-2);<br>  }<br>}<br><br>fib(10)", hint: "1 + 1 +2 + 3 + 5 +8 ..."})
intermediate14 = randall.codes.create({title: "Undefined Function", level: "Intermediate", question: "Which code outputs: Uncaught TypeError: undefined is not a function", correctCode: "Game.prototype.restart = function () {<br>  this.clearLocalStorage();<br>  this.timer = setTimeout(function() {<br>    this.clearBoard(); <br>  }, 0);<br>};<br><br>", wrongCode: "Game.prototype.restart = function () {<br>  this.clearLocalStorage();<br>  var self = this;<br>  this.timer = setTimeout(function(){<br>    self.clearBoard();<br>  }, 0);<br>};", hint: "It’s all about context. The reason you get the above error is because, when you invoke setTimeout(), you are actually invoking window.setTimeout(). As a result, the anonymous function being passed to setTimeout()is being defined in the context of the window object, which has no clearBoard() method."})
intermediate15 = randall.codes.create({title: "NaN", level: "Intermediate", question: "Which code outputs false?", correctCode: "console.log(NaN === NaN);", wrongCode: "console.log(isNaN(NaN));", hint: "It’s worth mentioning that comparing NaN with anything (even NaN!) will always return false."})
intermediate16 = randall.codes.create({title: "Null & Undefined", level: "Intermediate", question: "Which code outputs false?", correctCode: "false == null", wrongCode: "null == undefined", hint: "The equality (==) operator will compare for equality after doing necessary type casting, the identity operator (===) doesn't do any conversions."})
intermediate17 = randall.codes.create({title: "Window.onload", level: "Intermediate", question: "Which definition defines window.onload?", correctCode: "Event does not fire until every last piece of the page is loaded, this includes css and images.", wrongCode: "Waits until the DOM is loaded and is able to be manipulated.<br><br>", hint: "The other definition is for onDocumentReady."})
intermediate18 = randall.codes.create({title: "Callback", level: "Intermediate", question: "Which callback does not work?", correctCode: "$('button').click(function(){<br>  $(‘p').hide(“slow',<br>    alert('The paragraph is now hidden');<br>  });<br>});", wrongCode: "$(‘button').click(function(){<br>  $('p').hide(“slow',function(){<br>    alert('The paragraph is now hidden');<br>  });<br>});", hint: "This is commonly used in jQuery"})
intermediate19 = randall.codes.create({title: "Scoping", level: "Intermediate", question: "Which code prints out 1,2,3,4,5,6,7,8,9,10?", correctCode: "for(var i = 0; i < 10; i++){<br>  (function(i){<br>    setTimeout(function(){<br>      console.log(i+1);<br>    }, 100*i);<br>  })(i);<br>}", wrongCode: "for(var i = 0; i < 10; i++){<br>  setTimeout(function(){<br>    console.log(i+1);<br>  }, 100*i);<br>}<br><br><br>", hint: "Take a good look at scoping."})
intermediate20 = randall.codes.create({title: "Range Error", level: "Intermediate", question: "Which recursion method outputs: RangeError: Maximum call stack size exceeded?", correctCode: "function factorial(num) {<br>  if (num < 0) {<br>    return -1;<br>  }<br>  else if (num == 0) {<br>    return 1;<br>  } else {<br>    return (num * factorial(num - 1));<br>  }<br>}<br><br>factorial(5)", wrongCode: "function factorial(num) {<br>  if (num < 0) {<br>    return -1;<br>  }<br>  else if (num == 0) {<br>    return 1;<br>  } else {<br>    return (num * factorial(num));<br>  }<br>}<br><br>factorial(5)", hint: "Maximum call size exceeded - A function that eventually calls itself again and again until the stack is full.  Careful!, One of them will not work!"})





