//
//  RepositoryView.swift
//  gh-viewer
//
//  Created by kobadlve on 2019/12/09.
//  Copyright © 2019 kobadlve. All rights reserved.
//

import SwiftUI

struct RepositoryView: View {
    var repository: RepositoryEntity
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(repository.name).fontWeight(.bold)
            descriptionView
        }
    }
    
    private var descriptionView: some View {
        if let description = repository.description {
            return Text(description)
        } else {
            return Text("")
        }
    }
}

