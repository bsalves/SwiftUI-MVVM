//
//  FirstService.swift
//  DependencyInjection
//
//  Created by Bruno Alves on 18/08/23.
//

import Foundation

final class FirstService: FirstServiceProtocol {
    func fetch() async -> String {
        "Service HTTP returned this..."
    }
}
