import UIKit

//MARK: - Clocures Example

var arr:[String] = ["A","B","c"]
func filterArray(array :[String],closure: (String) -> Bool ) -> [String]{
    var wordsArray = [String]()
    for item in array{
        if closure(item) {
            wordsArray.append(item)
        }
    }
    return wordsArray
}

let filtered = filterArray(array: arr) { $0.contains("B") }

print("\(filtered)")


//MARK: - Enumerations

enum StatusCode {
    case success
    case notFound
    case internalServerError
    case unauthorized
}

extension StatusCode{
    var description: String {
        switch self {
        case .success:
            return "Success getting Data"
        case .notFound:
            return "Not Found"
        case .internalServerError:
            return "Internal Server Error"
        case .unauthorized:
            return "Unauthorized"
        }
    }
    
}

var status = StatusCode.notFound
print(status.description)
