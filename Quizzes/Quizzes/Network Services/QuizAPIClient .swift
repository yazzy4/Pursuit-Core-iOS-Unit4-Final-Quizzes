//
//  QuizAPIClient .swift
//  Quizzes
//
//  Created by Yaz Burrell on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation
final class QuizAPIClient{
    private init (){}
    static func quizSearch(completionHandler: @escaping (AppError?, [Quiz]?) -> Void) {
        let endpointURLString = "http://5c4d4c0d0de08100147c59b5.mockapi.io/api/v1/quizzes"
        guard let url = URL(string: endpointURLString) else {
            completionHandler(AppError.badURL(endpointURLString), nil)
            return
        }
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                completionHandler(AppError.networkError(error), nil)
            }
            guard let httpResponse = response as? HTTPURLResponse,
                (200...299).contains(httpResponse.statusCode) else {
                    let statusCode = (response as? HTTPURLResponse)?.statusCode ?? -999
                    completionHandler(AppError.badStatusCode("\(statusCode)"), nil)
                    return
            }
            if let data = data {
                do {
                    let quizData = try JSONDecoder().decode([Quiz].self, from: data)
                    completionHandler(nil, quizData)
                    
                    
                } catch {
                completionHandler(AppError.jsonDecodingError(error), nil)
                    }
                }
            }.resume()
    }
}


