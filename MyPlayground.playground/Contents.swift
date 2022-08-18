import UIKit

var nums = [2,7,11,15]
let target = 9

//create a variable with 0 value
var counter = 0
var index = 0
var newArray: [Int] = []
//iterate through array,
for i in nums {
    if counter < 9 {
        //update counter
        counter += i
        newArray.append(index)
        index+=1
    }
}
print(newArray)
