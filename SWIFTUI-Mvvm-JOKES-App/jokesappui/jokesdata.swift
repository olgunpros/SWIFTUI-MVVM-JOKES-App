
import Foundation

struct Welcome: Identifiable,Codable {
    let id = UUID()
    let type: String
    let value: [Value]
}
struct Value: Identifiable,Codable {
    let id: Int
    let joke : String
    let categories: [String]
}
