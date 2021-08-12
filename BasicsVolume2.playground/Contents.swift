import UIKit

//var greeting = "Hello, playground"

//Closures - zamikanija - annonimous func
/*

 { (<#parameters#>) -> <#return type#> in
     <#statements#>
 }
 
 
let driving = {
    print("I am driving in my car.")   //no name funct assigned to constant - driving
}

driving()     // calling function
 
//

//let driving2 = {(place:String)in
//    print("I am going to \(place) in my car.")
//}
//driving2("London")    // != to func - using parameters when                         calling functions

let drivingWithReturn = {(place:String)-> String in
    return "I am going to \(place) in my car."
}

let message = drivingWithReturn("London")
print(message)
//

func pay(user:String, amount: Int){
    //code
}
    let payment = {(user:String, amount:Int) in
        //code
    }

//

let payment2 = {(user:String) in
    print("paying \(user)")
}
let payment3 = {(user:String) -> Bool in
    print("paying \(user)")
    return true
}
let payment4 = {() ->Bool in
    print("Paying...")
    return true
}
 //func payment5() -> Bool

//
let driving = {
    print("I am driving in my car.")
}
driving()
// -> void

func travel(action: () -> Void){
    print("I am almost ready to go")
    action()
    print("Ive arrived!")
}
travel(action: driving)

travel(){
    print("I am leaving")
}
//

func aniamate(duration:Double, animations:() -> Void){
    print("Starting a \(duration) second animation")
    animations()
}

aniamate(duration:3, animations: {
    print("Image")
})
aniamate(duration: 3) {
    print("Image2")
}
//
/*
 var perimeter:Int
func calculatePerimetr(sideA:Int, sideB:Int){
    
 perimeter = sideA * sideB
    print(perimeter)
    sideA(3)
    sideB(5)
    perimeter = calculatePerimetr()
    print("My perimeter is \(perimeter)")
}
 */
// () -> void   nothing received and nothing returned
func travelling(action:(String)->Void){
    print("Lets go")
    action("London")
    print("We are here!")
}

travelling { (place: String) in
    print("I am going to \(place) in my car")
}
//

//let changeSpeed = {(speed:Int) in
   // print("Change speed to \(speed) kph.")
//}
//func buildCar(name:String, engine: Int -> Void) {
    //build the car code
//}
//
func travel5(action:(String) -> String){
    print("GO!")
    let description = action("London")
    print (description)
    print("Arrived!")
    
    }
travel5 { (place:String)->String in
    return "I am going to \(place) in my car."
}

//$0 - 0 index of the parameter
travel5{
    "I'm leaving to \($0) in my car."
}

func travel6(action:(String,Int)->String){
    print("Start!")
    let description = action("London", 60)
    print(description)
    print("hERE!")
}
travel6 {
    "I am going \($0) to \($1) at mph."
}
//

func travel7() -> (String)-> Void {
    return {
        print("I am going to \($0).")
    }
}
let result = travel7()
 result("Tokio")

//capturing values

func travel11() -> (String) -> Void {
    var counter = 1
    return{
        print("\(counter). I am going to \($0)")
        counter += 1
    }
}
 let result = travel11()
 result ("London")
result ("Londom")
//
 */
//14 Enumeration (perechislenija)

let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}

var result4 = Result.failure
result4 = .success

let result5:Result
result5 = .success //initializing


enum Activity{
    case dancing, running (destination:String), talking(topic:String), singing (volume:Int)
    
}
let currentActivity = Activity.dancing
switch currentActivity{

case .dancing: print("Dance")
case .running: print("Run")
case .talking: print("Talk")
case .singing: print("Sing")
}
let talking = Activity.talking(topic: "Footbal")
print(talking)
 //

//raw value - Int - indexes, String -

enum Planet:Int {
    case mercury = 1, venus, earth, mars
}

let earth = Planet(rawValue: 3)

//

enum Phone:String {
    case apple = "iPhone 8", samsung = "gALAXU X10", google = "Pixel 2"
}
var myPhone = Phone.apple
print(myPhone)
print(myPhone.rawValue)


//15 Classess

class Human {
    var age = 25
    var name = "Mary"
    
    func move(){
    print("\(name) is moving.")
    }
}
 var maria = Human()
maria.age
maria.name
maria.move()
//
/*
class Dogs {
    var breed: String      //requires initialization
    var age: Int
    
    func bark() {
        print("\(breed) barks.")
    }
    
    init(age:Int, breed:String) {
        self.age = age
        self.breed = breed
    }
}
var animal = Human
*/
class People {
    var age: Int
    var name : String
    
    func move(){
    print("\(name) is moving.")
    }
    
    init(age:Int, name:String) {
        self.age = age
        self.name = name
    }
}
var woman = People(age: 30, name: "Sara")
print(woman)

//stored properties, computed properties

class Account {
    var sum: Double = 0
    var rate: Double = 0.01
    var profit:Double {
        get{
            return sum + sum * rate
        }
        set(newProfit){
            self.sum = newProfit / (1 + rate)
        }
    }
    init (sum:Double, rate:Double){
        
        self.sum = sum
        self.rate = rate
    }
}
var myAcc:Account = Account (sum: 1000, rate: 0.1)
print(myAcc.profit)
myAcc.profit = 2000    //expected profit
print(myAcc.sum)

// willSet/ didSet / get/set
