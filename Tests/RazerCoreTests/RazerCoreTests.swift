import XCTest
@testable import RazerCore

final class RazerCoreTests: XCTestCase {
    func testColorRedEqual() {
        let color = RazerCore.colorFromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }

    static var allTests = [
        ("testColorRedEqual", testColorRedEqual)
    ]
}
