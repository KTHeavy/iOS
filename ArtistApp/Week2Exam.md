# Exam Week 2

## Section 1

What is Swift and how is it unique?
Is a multi-paradigm programming language, created by Apple for development apps in iOS and MacOS. It's currently open source. t’s a safe, fast, and interactive programming language that combines the best in modern language.

What is an optional?
It can contain a value or be nil.

What are the different ways we can unwrap an optional and explain each?
They're 'an if else block , optional binding, optional chaining, forced unwrapping and with the nil coalescing operator'
"if else block" is done with a block and validates that it isn't nil.
"Optional binding" is done with a block using the 'if-let'.
"Optional chaining" checks with operator '?', it verifies the value of its chained elements exists.
"Forced unwrapping" ensures that value always exists, it throws an error if it's null.
"nil coalescing operator" checks if the value is null assigns a default value. 

What is optional chaining?
It verifies that the object with the symbol of '?' and it performs the corresponding action if the element exists.
What is MVC? Go into detail and give some of the pros and cons.
It's an architectural pattern consisting of three parts(Model, View, Controller).
Pros: 
    - Development of the application becomes fasts.
    - Easier to update the app.
    - Easy for multiple developers to colloborate  and work together.
Cons:
    - It's hard to understand the MVC architecture.
    - Must have strict rules on methods.
Explain the Viewcontroller Lifecycle.
It's usually created from storyboards. It has different methods, they are:
    - viewDidLoad
    - viewWillAppear
    - viewWillLayoutSubviews
    - viewDidLayoutSubviews
    - viewDidAppear
    - viewWillDisappear
    - viewDidDisappear
In the Application LifeCycle, what does it mean when the application is Inactive?
An application is running in the foreground but is not receiving any events. User interaction isn't possible at this time.
What is a closure? What is the difference between an escaping and non-escaping closure?
It's self-contained blocks of functionality that can be passed around and used in your code. Non-escaping is writing the function in the same variable declaration without having to declare a function
What is the difference between reference types and value types?
A value type holds the data within its own memory allocation and reference type  contains a pointer to another memory location that holds the real data.
In Swift, how do we pass a value by reference? 
In the  function you need to use '&' for the parameters.
What are some higher order functions used in swift and what do they do? (Give 2)
    - sort: is used to sort arrays, you can declare the way it will be sorted.
    - filter: returns the result of a query, usually used in array.
What is Autolayout?
Auto Layout constraints allow us to create views that dynamically adjust to different size classes and positions. The constraints will make sure that your views adjust to any size changes without having to manually update frames or positions.



## Section 2 Coding

### Find the second-largest value of an array, in linear time.
For this case, we'll consider unique values.

input: [1, 2, 3, 4, 5, 5]
output: 4
Also factor in empty or single-element arrays.

input: [1]
output: nil

import UIKit

let array: [Int] = [2, 55, 567,  1, 33, 90, 944, 323]
if array.count < 2 {
    print("nil")
}
else{
    let newArray =  array.sorted(by: {$0 > $1})
    print(newArray[1])
}
