//
//  RepositoryViewModel.swift
//  gh-viewer
//
//  Created by kobadlve on 2019/12/09.
//  Copyright © 2019 kobadlve. All rights reserved.
//

import Foundation

class RepositoryPresenter {
    var model: RepositoryModel = RepositoryModel()
    
    init(model: RepositoryModel) {
        self.model = model
    }
    
    func updateUser(username: String) {
        model.fetchRepositories(username: username)
    }
}
