//
//  ContentView.swift
//  gh-viewer
//
//  Created by kobadlve on 2019/12/09.
//  Copyright © 2019 kobadlve. All rights reserved.
//

import SwiftUI

struct RepositoryListView: View {
    var presenter: RepositoryPresenter
    @ObservedObject var model: RepositoryModel
    @State private var username: String = ""
    
    init(presenter: RepositoryPresenter, model: RepositoryModel) {
        self.presenter = presenter
        self.model = model
    }
    
    var body: some View {
        NavigationView {
            VStack {
                HStack(spacing: 10) {
                    TextField("Enter username", text: $username).autocapitalization(.none).padding(20)
                    Button(action: {
                        self.presenter.updateUser(username: self.username)
                    }) {
                        Text("Search").padding(20)
                    }
                }
                List(model.repositories) { repo in
                    RepositoryView(repository: repo)
                }
            }
            .navigationBarTitle(Text("gh-viewer"))
        }
    }
}
