import XCTest
@testable import LunchAndLearn

final class LunchAndLearnTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(LunchAndLearn().text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
