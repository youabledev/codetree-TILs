import Foundation

// let input = Array(readLine()!.components(separatedBy: " ")).map { Int(String($0))! }
let input = readLine()!.split(separator: " ").map { Int($0)! }
(1...input[0]).forEach { _ in print(String(repeating: "1", count: input[1])) }