//
//  SecondViewModel.swift
//  DependencyInjection
//
//  Created by Bruno Alves on 18/08/23.
//

import Foundation

final class SecondViewModel: SecondViewModelProtocol {
    
    // MARK: - properties
    
    var service: SecondServiceProtocol
    
    // MARK: - Publishers
    
    @Published var viewTitle = "Second view"
    @Published var value = String()
    
    // MARK: - Initializer
    
    init(_ service: SecondServiceProtocol) {
        self.service = service
    }
    
    // MARK: - Methods
    
    @MainActor func loadValue() async {
        value = await service.fetch()
    }
}
