//
//  FirstServiceTests.swift
//  DependencyInjectionTests
//
//  Created by Bruno Alves on 18/08/23.
//

@testable import DependencyInjection
import XCTest

final class FirstServiceTests: XCTestCase {
    
    var sut: FirstService?

    override func setUpWithError() throws {
        sut = FirstService()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testFetch() async throws {
        let result = await sut?.fetch()
        XCTAssert(result != nil)
    }

}
