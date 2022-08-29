import UIKit

let array: [Int] = [2, 55, 567,  1, 33, 90, 944, 323]
if array.count < 2 {
    print("nil")
}
else{
    let newArray =  array.sorted(by: {$0 > $1})
    print(newArray[1])
}
