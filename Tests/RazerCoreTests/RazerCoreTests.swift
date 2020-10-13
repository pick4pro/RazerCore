import XCTest
@testable import RazerCore

final class RazerCoreTests: XCTestCase {
    func testColorRedEqual() {
        let color = RazerCore.colorFromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }
    
    func testRazerColorsAreEqual() {
        let color = RazerCore.colorFromHexString("006736")
        XCTAssertEqual(color, RazerCore.razeColor)
    }

    static var allTests = [
        ("testColorRedEqual", testColorRedEqual),
        ("testRazerColorsAreEqual", testRazerColorsAreEqual)
    ]
}
