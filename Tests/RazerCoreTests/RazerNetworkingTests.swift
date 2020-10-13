//
//  RazerNetworkingTests.swift
//  RazerCoreTests
//
//  Created by Jimmy Wright on 10/13/20.
//

import XCTest
@testable import RazerCore

final class RazerNetworkingTests: XCTestCase {
    func testLoadDataCall() {
        let manager = RazerCore.Networking.Manager()
        let expectation = XCTestExpectation(description: "Called for data")
        guard let url = URL(string: "https://raywenderlich.com") else {
            return XCTFail("Could not create URL properly")
        }
        manager.loadData(from: url) { result in
            expectation.fulfill()
            switch result {
            case .success(let returnedData):
                XCTAssertNotNil(returnedData, "Response data is nil")
            case .failure(let error):
                XCTFail(error?.localizedDescription ?? "error forming error result")
            }
        }
        wait(for: [expectation], timeout: 5)
    }
    
    static var allTests = [
        ("testLoadDataCall",  testLoadDataCall)
    ]

}
