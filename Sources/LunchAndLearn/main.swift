import Foundation
import Alamofire

extension Data {
    public func asString() -> String? {
        return String(data: self, encoding: .utf8)
    }
}

extension String {
    public func asData() -> Data? {
        return self.data(using: .utf8)
    }
}

/// Features I want to show off

/// Double lables, default params, and how they enable progressive disclosure UX

//func add(firstNumber: Int, secondNumber: Int) -> Int {
//    return firstNumber + secondNumber
//}
//
//add(firstNumber: 10, secondNumber: 30)
//
//func add(_ firstNumber: Int, to secondNumber: Int) -> Int {
//    return firstNumber + secondNumber
//}
//
//print("Addition:", add(10, to: 30))
//
//class Person {
//    let name: String
//    let age: Int
//    let numberOfLegs: Int
//
//    init(name: String, age: Int, numberOfLegs: Int=2) {
//        self.name = name
//        self.age = age
//        self.numberOfLegs = numberOfLegs
//    }
//}
//
//let alex = Person(name: "Alex", age: 21)
//
//
//// With default params
//Alamofire.request("https://catfact.ninja/fact").responseJSON { (response) in
//    // Do what you need with the response
//}
//
//// Without
//Alamofire.request("https://catfact.ninja/fact", method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON(queue: nil, options: .allowFragments) { (response) in
//    // Do what you need with the response
//}

/// Safety features:
/// Safety of types http://ttendency.cs.ucl.ac.uk/projects/type_study/documents/type_study.pdf
    /// Documentation
    /// Tools
    /// Code Completion
    /// Code Navigation
/// Safety of optionals
/// Safety of parameter labels
/// Safety of ARC
/// Why care about safety?:
/// Less testing
/// Less bugs
/// Higher confidence
/// Lower developer cognitive load

/// Protocol oriented programming and how it enables simple dependency injection

//protocol Greetable {
//    func getGreeting(completion: (String?) -> Void)
//}
//
//struct GreetingManager: Greetable {
//    func getGreeting(completion: (String?) -> Void) {
//        // Get greeting from the server
//        // return it
//    }
//}
//
//class FriendlyPerson {
//    let greetingManager: Greetable
//
//    init(greetingManager: Greetable=GreetingManager()) {
//        self.greetingManager = greetingManager
//    }
//}
//
//let friendlyPersonInProduction = FriendlyPerson()
//
//struct GreetingSuccessMock: Greetable {
//    func getGreeting(completion: (String?) -> Void) {
//        completion("Hey there!")
//    }
//}
//
//struct GreetingFailMock: Greetable {
//    func getGreeting(completion: (String?) -> Void) {
//        completion(nil)
//    }
//}
//
//let friendlyPersonInTesting = FriendlyPerson(greetingManager: GreetingSuccessMock())
//let nilPersonInTesting = FriendlyPerson(greetingManager: GreetingFailMock())

/// Protocol conformance and other extension features

/// Codable
struct Person: Codable {
    let name: String
    let age: Int
    let height: Float // In inches
}

let jsonString =
"""
{
    "name":"Alex",
    "age":21,
    "height":70
}
"""

do {
    let alex = try JSONDecoder().decode(Person.self, from: jsonString.asData()!)
    print(alex)
} catch {
    print(error)
}

/// Auto generated Struct inits

let shelly = Person(name: "Shelly", age: 45, height: 65)

do {
    let jsonShelly = try JSONEncoder().encode(shelly).asString()

    print(jsonShelly!)
} catch {
    print(error)
}


/// Unicode identifiers
let 🐮 = 10

/// The power of enums with params/associated types

/// Conditional conformance

//protocol Nameable {
//    func name() -> String
//}
//
//extension Int: Nameable {
//    func name() -> String {
//        return "Int"
//    }
//}
//
//struct Box<T> {
//    let contents: T
//}
//
//extension Box: Nameable where T: Nameable {
//    func name() -> String {
//        return self.contents.name()
//    }
//}
//
//let box = Box(contents: 10)
//
//print(box.name())
//
//let otherBox = Box(contents: "Hello")
//print(otherBox.name())

RunLoop.main.run(until: Date(timeIntervalSinceNow: 5))
