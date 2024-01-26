
import Foundation
import Alamofire

class jokesviewmodel : ObservableObject {
    
    @Published var jokes = [Value]()
    init() {
        getJokes()
    }
    
    func getJokes() {
        AF.request("https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json",method: .get).responseDecodable(of:Welcome.self) { response in
            switch response.result {
            case .success(let data):
                let value = data.value
                self.jokes += value
                
            case.failure(let error):
                print (error)
            }
        }
        
    }
    
}
