//
//  FirstView.swift
//  DependencyInjection
//
//  Created by Bruno Alves on 18/08/23.
//

import SwiftUI

struct FirstView<ViewModel>: View where ViewModel: FirstViewModelProtocol {
    
    @StateObject var viewModel: ViewModel
    
    var body: some View {
        ScrollView {
            Text(viewModel.value)
            Button(
                "Go to next view",
                action: { viewModel.goToNextView.toggle() }
            )
            ZStack {
                NavigationLink(
                    destination: SecondView(viewModel: SecondViewModel(SecondService())),
                    isActive: $viewModel.goToNextView,
                    label: { EmptyView().opacity(.zero) }
                )
            }
        }
        .task { await viewModel.loadValue() }
        .navigationTitle(viewModel.viewTitle)
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView(
            viewModel: FirstViewModel(
                FirstServiceMock()
            )
        )
    }
}
