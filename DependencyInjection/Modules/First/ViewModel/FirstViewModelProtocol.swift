//
//  FirstViewModel.swift
//  DependencyInjection
//
//  Created by Bruno Alves on 18/08/23.
//

import Foundation

protocol FirstViewModelProtocol: ObservableObject {
    
    // MARK: - Private properties
    
    var service: FirstServiceProtocol { get }
    
    // MARK: - Publishers
    
    var viewTitle: String { get }
    var value: String { get }
    var goToNextView: Bool { get set }
    
    // MARK: - Initializer
    
    init(_ service: FirstServiceProtocol)
    
    // MARK: - Methods
    
    func loadValue() async
}
