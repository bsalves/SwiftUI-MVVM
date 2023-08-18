//
//  SecondServiceTests.swift
//  DependencyInjectionTests
//
//  Created by Bruno Alves on 18/08/23.
//

@testable import DependencyInjection
import XCTest

final class SecondServiceTests: XCTestCase {

    var sut: SecondService?
    
    override func setUpWithError() throws {
        sut = SecondService()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testExample() async throws {
        let result = await sut?.fetch()
        XCTAssert(result != nil)
    }
}
