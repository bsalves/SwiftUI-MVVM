//
//  FirstServiceMockTests.swift
//  DependencyInjectionTests
//
//  Created by Bruno Alves on 18/08/23.
//

@testable import DependencyInjection
import XCTest

final class FirstServiceMockTests: XCTestCase {
    
    var sut: FirstServiceMock?

    override func setUpWithError() throws {
        sut = FirstServiceMock()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testMockedFetch() async throws {
        let result = await sut?.fetch()
        XCTAssert(result != nil)
    }
}
