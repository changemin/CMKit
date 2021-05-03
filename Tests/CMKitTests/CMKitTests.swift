import XCTest
@testable import CMKit

final class CMKitTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CMKit().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
