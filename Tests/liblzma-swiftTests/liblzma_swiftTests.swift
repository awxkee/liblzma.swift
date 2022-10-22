import XCTest
@testable import liblzma_swift

final class liblzma_swiftTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(liblzma_swift().text, "Hello, World!")
    }
}
