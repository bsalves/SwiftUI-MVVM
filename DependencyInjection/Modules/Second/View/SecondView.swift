//
//  SecondView.swift
//  DependencyInjection
//
//  Created by Bruno Alves on 18/08/23.
//

import SwiftUI

struct SecondView<ViewModel>: View where ViewModel: SecondViewModelProtocol {
    
    @StateObject var viewModel: ViewModel
    
    var body: some View {
        ScrollView {
            Text(viewModel.value)
        }
        .task { await viewModel.loadValue() }
        .navigationTitle(viewModel.viewTitle)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(
            viewModel: SecondViewModel(
                SecondServiceMock()
            )
        )
    }
}
