//
//  RepositoryModel.swift
//  gh-viewer
//
//  Created by kobadlve on 2019/12/09.
//  Copyright © 2019 kobadlve. All rights reserved.
//

import SwiftUI

class RepositoryModel: ObservableObject {
    let api = GitHubAPI.shared()
    @Published var repositories: [RepositoryEntity] = []
    
    func fetchRepositories(username: String) {
        api.getRepositories(username: username, completion: { (repositories) in
            self.repositories = repositories
        })
    }
}
