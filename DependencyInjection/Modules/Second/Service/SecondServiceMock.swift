//
//  SecondServiceMock.swift
//  DependencyInjection
//
//  Created by Bruno Alves on 18/08/23.
//

import Foundation

final class SecondServiceMock: SecondServiceProtocol {
    func fetch() async -> String {
        return "Hello from second mocked service"
    }
}
