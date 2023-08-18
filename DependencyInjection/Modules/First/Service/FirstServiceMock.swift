//
//  FirstServiceMock.swift
//  DependencyInjection
//
//  Created by Bruno Alves on 18/08/23.
//

import Foundation

final class FirstServiceMock: FirstServiceProtocol {
    func fetch() async -> String {
        "Hello from mocked service"
    }
}
