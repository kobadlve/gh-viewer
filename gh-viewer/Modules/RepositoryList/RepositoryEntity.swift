//
//  Repository.swift
//  gh-viewer
//
//  Created by kobadlve on 2019/12/09.
//  Copyright © 2019 kobadlve. All rights reserved.
//

import SwiftUI

struct RepositoryEntity: Identifiable, Codable {
    var id: Int?
    var name: String
    var description: String?
    var url: URL
    
    init(name: String, description: String, url: URL) {
        self.name = name
        self.description = description
        self.url = url
    }
    
}
