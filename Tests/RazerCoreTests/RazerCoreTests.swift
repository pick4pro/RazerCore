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
    
    func testSecondaryRazerColorsAreEqual() {
        let color = RazerCore.colorFromHexString("FCFFFD")
        XCTAssertEqual(color, RazerCore.secondaryRazeColor)
    }

    static var allTests = [
        ("testColorRedEqual", testColorRedEqual),
        ("testRazerColorsAreEqual", testRazerColorsAreEqual),
        ("testSecondaryRazerColorsAreEqual", testSecondaryRazerColorsAreEqual)
    ]
}
