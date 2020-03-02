// ASSESSMENT 4: JavaScript Coding Practical Questions

// --------------------1) Create a function that takes in an array. Each time the function is run, remove the first item from the array and shuffle the remaining content. If the array is empty, return "The array is empty."

var collections = ["purple", "blue", "green", "yellow", "pink"]
var emptyarray = []

const myFunction = (arr) => {
    let newArray = []
    if (arr.length === 0)
        return "The array is empty." 
    else {
        return arr.shift()
    }
}

function shuffle(array) {
    var currentIndex = array.length, temporaryValue, randomIndex;
  
    while (0 !== currentIndex) {
  
      randomIndex = Math.floor(Math.random() * currentIndex);
      currentIndex -= 1;
  
      temporaryValue = array[currentIndex];
      array[currentIndex] = array[randomIndex];
      array[randomIndex] = temporaryValue;
    }
  
    return array;
  }

console.log(myFunction(collections))
console.log(shuffle(collections))
console.log(myFunction(collections))
console.log(shuffle(collections))
console.log(myFunction(collections))
console.log(shuffle(collections))
console.log(myFunction(collections))
console.log(shuffle(collections))
console.log(myFunction(collections))
console.log(shuffle(collections))
console.log(myFunction(collections))





// Expected output example1 (can be a different order): ["yellow", "blue", "pink", "green"]
// Expected output example2 (can be a different order): ["blue", "green", "pink"]
// Expected output example3 (can be a different order): ["pink", "green"]


// --------------------2) Create a function that takes in an array of numbers and returns the sum of all the numbers cubed.

var cubeAndSum1 = [2, 3, 4]
// Expected output: 99
var cubeAndSum2 = [0, 5, 10]
// Expected output: 1125

const myFunction = (arr) =>{
    let newArray= arr.map(value=> value **3)
    let sum = newArray.reduce((total,current) => total+current)
    return sum
}
console.log(myFunction(cubeAndSum1))
console.log(myFunction(cubeAndSum2))



// --------------------3) Create a function that takes an array of numbers and returns an array of the minimum and maximum numbers in that order.


const myFunction = (arr) => {
    let max = (Math.min(...arr))
    let min = (Math.max(...arr))
    return [max,min]
}  

var nums1 = [3, 56, 90, -8, 0, 23, 6]
// Expected output: [-8, 90]
var nums2 = [109, 5, 9, -59, 8, 24]
// Expected output: [-59, 109]

console.log(myFunction(nums1))
console.log(myFunction(nums2))


// --------------------4) Create a function that takes in a string and returns a string with every other letter capitalized.

var testString1 = "albatross";
// Expected output: "aLbAtRoSs"

var testString2 = "jabberwocky";
// Expected output: "jAbBeRwOcKy"

function firstLetterUppercase (input) {
    var finalword = "";
    for (i=0; i < input.length; i++) {
       finalword += i % 2 == 0 ? input.charAt(i) : input.charAt(i).toUpperCase() ;
    }
    return finalword;  
  }
  
  console.log(firstLetterUppercase(testString1));
  console.log(firstLetterUppercase(testString2));

// --------------------5) Create a function that takes in two arrays as arguments and returns one array with no duplicate values. STRETCH: Use the spread operator.


var arr1 = [3, 7, 10, 5, 4, 3, 3]
var arr2 = [7, 8, 2, 3, 1, 5, 4]
// Expected output: [3, 7, 10, 5, 4, 8, 2, 1]
let newArray = arr1.concat(arr2)

function removedupes(array) {
    return array.filter((a,b) => array.indexOf(a) ===b)
}
console.log(removedupes(newArray))

// *~*~*~*~*~*~*~SPREAD~*~*~*~*~~*~*

var arr1 = [3, 7, 10, 5, 4, 3, 3]
var arr2 = [7, 8, 2, 3, 1, 5, 4]
// Expected output: [3, 7, 10, 5, 4, 8, 2, 1]
let newArray = [...arr1, ...arr2]

function removedupes(array) {
    return array.filter((a,b) => array.indexOf(a) ===b)
}
console.log(removedupes(newArray))