//
//  JokesViewModel.swift
//  JokesApp
//
//  Created by Айбек on 21.11.2023.
//

import Foundation
import Alamofire

class JokesViewModel : ObservableObject {
    @Published var jokes = [Value]()
    
    init() {
        getJokes()
    }
    
    func getJokes() {
        AF.request("http://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json", method: .get).responseDecodable(of: Welcome.self) { resp in
            switch resp.result {
            case .success(let data):
                let value = data.value
                self.jokes += value
            case .failure(let err):
                print(err)
            }
        }
    }
}
