//
//  SecondServiceProtocol.swift
//  DependencyInjection
//
//  Created by Bruno Alves on 18/08/23.
//

import Foundation

protocol SecondServiceProtocol {
    func fetch() async -> String
}
