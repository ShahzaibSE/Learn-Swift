import Cocoa

var str = "Hello, playground"

enum Token: Int {
    case number = 23
}

var tokenLowerCase = Token.number
print("Token Lower Case: \(Token(rawValue: tokenLowerCase.rawValue)!)")
//var tokenName = Token(rawValue: tokenLowerCase.rawValue)


