//
//  FirstViewModelTests.swift
//  DependencyInjectionTests
//
//  Created by Bruno Alves on 18/08/23.
//

@testable import DependencyInjection
import XCTest

final class FirstViewModelTests: XCTestCase {
    
    private var sut: FirstViewModel?

    override func setUpWithError() throws {
        sut = FirstViewModel(FirstServiceMock())
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testViewTitle() {
        XCTAssert(sut?.viewTitle == "First view")
    }
    
    func testValue() async throws {
        let result = await sut?.loadValue()
        XCTAssert(result != nil)
    }

}
