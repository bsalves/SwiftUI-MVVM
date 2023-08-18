//
//  FirstViewModel.swift
//  DependencyInjection
//
//  Created by Bruno Alves on 18/08/23.
//

import Foundation

final class FirstViewModel: FirstViewModelProtocol {
    
    // MARK: - Private properties
    
    var service: FirstServiceProtocol
    
    // MARK: - Initializer
    
    init(_ service: FirstServiceProtocol) {
        self.service = service
    }
    
    // MARK: - Publishers
    
    @Published var viewTitle = "First view"
    @Published var value = String()
    @Published var goToNextView = false
    
    // MARK: - Methods
    
    @MainActor func loadValue() async {
        value = await service.fetch()
    }
}
