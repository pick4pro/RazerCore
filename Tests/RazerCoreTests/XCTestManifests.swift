import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(RazerColorTests.allTests),
        testCase(RazerNetworkingTests.allTests)
    ]
}
#endif
