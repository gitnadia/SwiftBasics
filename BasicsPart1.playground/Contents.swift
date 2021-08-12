import UIKit

//var greeting = "Hello, playground"
//Class tasks. Operations +, -, /, *, % remainder

var numberOne = 10
numberOne = numberOne + 5
//print(numberOne)
 //Remainder
let numberA = 9
let numberB = 4
var res = numberA % numberB
//print(res)

//Basic Operators
// -a, !b (not b)// binary: 1+2 // ternary: a ? b : c (if a true, perform c)
//Arithmetics: + (contatination), - , * , / , % (remainder)

let x = 12
let y = 4
//print(x+y)

// += , -=

//var a = 1
//var c += 2
//var c = c+2

// comparing: ==, !=, >, < , <= , >=

let o = 15
let p = 10
o == p
o != p

// ternary: a ? b : c (if a true, perform c)

let firstCart = 5
let secondCart = 15

if firstCart == secondCart {
    print("Carts are similar")
} else {
    print("Carts are different")
}

//ternary

firstCart == secondCart ? print("Carts are similar") :print("Carts are different")

let dog = "Dog"
let cat = "Cat"

dog != cat ? print("Animal are not the same") : print("Animals are simmilar")

//closed operators (a...b)/ half closed (a...<b) - b will not be included

//logical operators !a - not a , && - and , || - or

let happy = true
if !happy { // if above is false
    print("Why you are sad?")
} else { //is above is true
    print("It is true?")
}
// both operands are true
let goodWeather = true

if happy && goodWeather {
    print("Lets go for a walk")
}else{
    print("Stay at home")
}
//

if !happy || !goodWeather{
    print("lets go for a walk")
}else{
    print("stay home")
}


//4 Conditions
// if else/ switch

let firstCard = 11
let secondCard = 10

if secondCard + secondCard == 25 {
    print("You are winner")
}else {
    print("Try another time")
}

let firstNumber = 2
let secondNumber = 47

if firstNumber + secondNumber == 21 {
    print("win")
} else if (firstNumber + secondNumber) > 18 && (firstNumber + secondNumber) < 21 {
    print("good")
}else {print("regular")}

let age1 = 12
let age2 = 45

if age1 > 18 && age2 > 18 {
    print("Adults")
}; if age1 > 18 || age2 > 18 {
    print("one is adult")
}

//switch

let weather = "sunny"
switch weather {
case "rain":
    print("You must take an umbrella.")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear glasses")
    fallthrough //fallthrough - for other matches - will show the default
default:
    print("Enjoy your day.")
}
//

switch age1 { //12
case 0...10: print("You are too young.")
case 14..<20: print("You are teenager.")
case 20...60: print("You are adult.")
case 60...80: print("You are grown man.")
default: print("How old are you?")
}


//5 Cycles / loops
//for in / while/ repeat-while

//for in - collections, arrays, sets

let count = 1...10 // for each number in count print each number // number - constant in a current cycle
for number in count {
    print("Number is \(number)")
}
//
for i in 1...2 {
    print("we are counting")
}
//
for i in 0...9{ // action p[erformed till the end of the cycle
    print("\(i) multiply by 3 equals \(i*3)")
}

//while - is condition is true => perform condition till it is false


var numbr = 1

while numbr <= 3 {
    print(numbr)
    numbr += 1 // number = number + 1
}
print("Start!")

//repeat while (== do while) repeat {condition} while condition


repeat {
    print(numbr)
    numbr += 1
} while numbr <= 5
print("Start")
//
/*
var count = 10
repeat {
    //print(count)
    count += 1
} while count <= 5
    //print("Finish")
//
*/
//6 Tupples

let a = 10
let b = "Hello"

var person = (name: "Max", age: 25, education: "student", weight: 70.5)

var tuple = (a,b)
type(of: tuple)

person.name
person.education
person.0
person.1
person.2
person.3


//

let info = ("Alex", 31, 78.5)
var (nam, ag, weig) = info

nam
ag
weig
//

var point1 = (x: 4, y: 3)
var point2 = (x: 2, y: 6)

point1 = point2


//7 Optional data types - nil?

var book:Int? = 12
//book = nil

//book +1

if book == nil {
    print("Book is nil")
    
} else {book! + 1
    
}
//unvrappping / Int? - optional Int

var log:Int? = 12
if var safeAge = log{
    safeAge += 1
}else {print("log = nil")
    
}
//
let yearOfBirth = "1995"
Int(yearOfBirth)

if let safeYearOfBirth = Int(yearOfBirth) {
    safeYearOfBirth
}
//

var example: String? = "Hello"

print(example ?? "example = nil") // use "" if variable is nil

// Int, Int?, Int!

var number5: Int! = nil
number5 = 10
number5 = number5 + 7

//8 Collections: Array, Set, Dictionary
//Array

var array1 = Array <String>()
var array2 = [String]()

let apple = "apple"
let lemon = "lemon"
let orange = "orange"
let strawbery = "strawbery"

let fruits = [ apple, lemon, orange, strawbery] // Array fruits with 4 elements
//
var shoppingList = ["eggs", "milk", "bread", "sweets", "sugar"]
shoppingList.count // counting elements
shoppingList.isEmpty // checking if it is empty
shoppingList.append("butter") // including new element
shoppingList[0] // find element in Array
shoppingList[4]
shoppingList[1] = "salt" // remove one element for another
shoppingList
shoppingList.insert("pepper", at: 0) // inserting element at a specific index

for item in shoppingList { // printing all items in Array
    print(item)
}

for (index, value) in shoppingList.enumerated(){ // printing item with their indexes
    print("Item \(index): \(value).")
}

shoppingList += ["pepsi"] // sum of Arrays

var numbers1 = [1,2,3,4,5]
var numbers2 = [6,7,8,9]
var numbers3 = numbers1 + numbers2 // sum of Arrays

//Sets - no order [indexes], are unique ! use when searching for unique elements!

var set = Set<String>()
var sports: Set = ["badminton", "running", "tennis"]
sports.count
sports.isEmpty
sports.insert("bowling")
sports
sports.remove("running")
sports
sports.contains("tennis")

for sportName in sports {
    print(sportName)}

for sportName in sports.sorted() { // sorted by letters
    print(sportName)}
//
var numbers:Set = [1,6,3,7,8] // sorted by numbers
for number in numbers.sorted(){
    print(number)
}
//
let colors1 = Set (["red", "green","blue"])
let colors2 = Set (["red", "green","blue","green"]) // showing only unique data
//
let oddnNumbersSet: Set = [1, 3, 5, 7, 9]
let evenNumbersSet:Set = [0, 2, 4, 6, 8]
let primeNumbers:Set = [2, 3, 5, 7]

oddnNumbersSet.union(evenNumbersSet).sorted() // union - combining, sorted - sorting
oddnNumbersSet.intersection(evenNumbersSet).sorted() // checking is intersecting both Sets

let abc: Set = [1, 5, 6]
let cde: Set = [1, 9, 45]
abc.intersection(cde).sorted() // intersection - detecting common in both sets

oddnNumbersSet.subtracting(primeNumbers).sorted() //subtracting one Set from another

oddnNumbersSet.symmetricDifference(primeNumbers).sorted() // symmetric Difference = numbers that are unique in both Sets

//Dictionaries - keys as identificators - looking for data based on keys / Dictionary <Key, value> / [Key: Value]

var dictionary = [Int: String] ()
type(of: dictionary)

//var height = ["Mary": 1.60, "Max": 1.85, "Sam": 1.93]
//height["Max"]

//
var results = ["Math": 100, "English": 85, "Biology": 50]
results["English"]
results.count
results.isEmpty
results ["History"] = 80 // adding new element
results
results["Math"] = 120 // changing element
results
results.updateValue(70, forKey: "History") // changin element
results
results.updateValue(90, forKey: "Geometry") // non existing Key
results.removeValue(forKey: "History")
results

for (subject, point) in results{ // subject and point - tupple
    print("\(subject): \(point)")
}

for subject in results.keys {
    print("Subject: \(subject)")
}

for points in results.values {
    print("Points: \(points)")
}

var keys = Array(results.keys)
var values = Array(results.values)
*/
//Functions
// init - objavlenie - return - vernutj dannie Imja+ vhodnie znacenija

//greetings - name of the func
//no init and no return values
func greetings()   {
    print("hello, swift")
}
//calling func (vizivaem)
greetings()

//func square (number:Int){
    //print(number * number)
//}
 //square(number: 7)

//returning

func square1(number:Int) -> Int {
    return number * number
}
 var result = square1(number: 8)
print(result)


func sum1() -> Int {
    5 + 5
}

// return two or more values

func getUser() -> [String]{
    ["Michael", "Smith"]
}
 let user = getUser()
print(user[0])

//

func getuUserID() -> [String: String]{
    ["firstName": "Ivan", "secondName": "Ivanov"]
}
 let usedID = getuUserID()
print(usedID["firstName"])  // firstName - key

//tupples

func getUser2() -> (first:String, second: String) {
    (first: "Ivan", second: "Ivanov")
}

let user2 = getUser2()
print(user2.first)     // to access tupple values use .

// names of parameters

func square (number:Int){
    print(number * number)
}
 square(number: 7)
//
func round (height:Int, weight:Int){
    print(height*weight)
}
round(height: 3, weight: 5)
//

func sayHello(to name: String){
    print("Hello, \(name)!")
}
 sayHello(to: "Max")

//using no name parameters _

func greet(_ person:String){
    print("hELLO, \(person)")
}

greet("Max")
 
//terminator - separation

print("hELLO, world", terminator: "")
print("hELLO, world")
print("hELLO, world")

func greet2(_ person: String, nicely: Bool = true){
    if nicely == true{
        print("Hello, \(person).")
    }else {
        print("It is \(person) again...")
    }
}
greet2("Maria")
greet2("Sam", nicely: false)

// variatic functions and parameters

print("Hello", "Hello2")   //to define variatic parameter use...
                           //Int... - variatic parameter
func square2 (numbers: Int...){
    for numbers in numbers {
        print("\(number) squared is \(number * number)")
    }
}
 square2(numbers: 1 ,2,3,4,5)

//inout parameters - change constant parameters

func doubleIt(number: inout Int){
    number *= 2}

 var myNumber = 10

doubleIt(number: &myNumber)

//

let a = 10
a+10
