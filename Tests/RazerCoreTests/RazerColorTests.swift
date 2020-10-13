import XCTest
@testable import RazerCore

final class RazerColorTests: XCTestCase {
    
    func testColorRedEqual() {
        let color = RazerCore.Color.fromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }
    
    func testRazerColorsAreEqual() {
        let color = RazerCore.Color.fromHexString("006736")
        XCTAssertEqual(color, RazerCore.Color.razeColor)
    }
    
    func testSecondaryRazerColorsAreEqual() {
        let color = RazerCore.Color.fromHexString("FCFFFD")
        XCTAssertEqual(color, RazerCore.Color.secondaryRazeColor)
    }

    static var allTests = [
        ("testColorRedEqual", testColorRedEqual),
        ("testRazerColorsAreEqual", testRazerColorsAreEqual),
        ("testSecondaryRazerColorsAreEqual", testSecondaryRazerColorsAreEqual)
    ]
}
