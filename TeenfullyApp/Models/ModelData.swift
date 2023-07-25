//
// Holder for userdata for the model.
// Scratch idea: implementation through .json file
// Improved idea requires functioning backend

import Foundation
import Combine

final class ModelData: ObservableObject {//what does final keyword mean in swift?
    @Published var userData: [UserData] = load("userData.json")
    @Published var questionData: [questions] = load("dailyQuestionData.json")
}


func load<T: Decodable>(_ filename: String) ->T{
    let data : Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle: \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
