//
//  SecondViewService.swift
//  DependencyInjection
//
//  Created by Bruno Alves on 18/08/23.
//

import Foundation

final class SecondService: SecondServiceProtocol {
    func fetch() async -> String {
        "Return Second from HTTP service"
    }
}
