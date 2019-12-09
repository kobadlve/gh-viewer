//
//  GitHubAPI.swift
//  gh-viewer
//
//  Created by kobadlve on 2019/12/09.
//  Copyright © 2019 kobadlve. All rights reserved.
//

import Foundation
import Alamofire

public class GitHubAPI {
    static let sharedInstance = {
        return GitHubAPI()
    }()
    
    class func shared() -> GitHubAPI {
        return self.sharedInstance
    }
    
    func getRepositories(username: String, completion: @escaping ([RepositoryEntity]) -> Void) {
        let requestUrl = "http://api.github.com/users/" + username + "/repos"
        AF.request(requestUrl, method: .get).responseJSON { response in
            guard let data = response.data else { return }
            let decoder = JSONDecoder()
            do {
                let repositories = try decoder.decode([RepositoryEntity].self, from: data)
                completion(repositories)
            } catch {
                completion([])
            }
        }
    }
}
