//
//  SecondViewModelTests.swift
//  DependencyInjectionTests
//
//  Created by Bruno Alves on 18/08/23.
//

@testable import DependencyInjection
import XCTest

final class SecondViewModelTests: XCTestCase {
    
    var sut: SecondViewModel?

    override func setUpWithError() throws {
        sut = SecondViewModel(SecondServiceMock())
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testViewTitle() throws {
        XCTAssert(sut?.viewTitle == "Second view")
    }

    func testValue() async throws {
        let result = await sut?.loadValue()
        XCTAssert(result != nil)
    }
}
