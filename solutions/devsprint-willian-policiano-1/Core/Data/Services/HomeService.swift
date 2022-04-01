//
//  HomeService.swift
//  Core
//
//  Created by Willian Policiano on 22/03/22.
//

import Foundation

class HomeService: HomeLoader {
    private let httpClient: HttpClient
    private let url: URL

    private let httpOK = 200

    init(url: URL, httpClient: HttpClient) {
        self.url = url
        self.httpClient = httpClient
    }

    func getHome(completion: @escaping (HomeLoader.Result) -> Void) {
        httpClient.get(from: url) { [weak self] result in
            guard self != nil else { return }
            
            switch result {
            case let .success(response):
                completion(HomeMapper.map(response: response))
            case .failure:
                completion(.failure(Error.connection))
            }
        }
    }

    enum Error: Swift.Error {
        case invalidData
        case connection
        case notOk
    }
}
