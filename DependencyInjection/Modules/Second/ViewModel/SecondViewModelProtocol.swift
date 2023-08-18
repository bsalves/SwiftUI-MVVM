//
//  SecondViewModelProtocol.swift
//  DependencyInjection
//
//  Created by Bruno Alves on 18/08/23.
//

import Foundation

protocol SecondViewModelProtocol: ObservableObject {
    
    // MARK: - Private properties
    
    var service: SecondServiceProtocol { get }
    
    // MARK: - Publishers
    
    var viewTitle: String { get }
    var value: String { get }
    
    // MARK: - Initializer
    
    init(_ service: SecondServiceProtocol)
    
    // MARK: - Methods
    
    func loadValue() async
}
