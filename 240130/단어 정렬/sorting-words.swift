let n = Int(readLine()!)!
var arr = [String]()
(1...n).forEach { _ in arr.append(readLine()!) }
print(arr.sorted().joined(separator: "\n"))