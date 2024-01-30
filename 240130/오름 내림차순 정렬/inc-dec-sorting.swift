let _ = readLine()
 var arr = readLine()!.split(separator: " ").map { Int($0)! }

let sortedArray = arr.sorted()
print(sortedArray.map{ String($0) }.joined(separator: " "))
print(Array(sortedArray.reversed()).map{ String($0) }.joined(separator: " "))