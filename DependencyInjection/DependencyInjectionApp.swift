//
//  DependencyInjectionApp.swift
//  DependencyInjection
//
//  Created by Bruno Alves on 18/08/23.
//

import SwiftUI

@main
struct DependencyInjectionApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                FirstView(viewModel: FirstViewModel(FirstService()))
            }
        }
    }
}
