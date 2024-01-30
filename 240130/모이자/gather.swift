let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int($0)! }

var minSum = 100 * 100 * 100
for i in 0..<n {
    var tmpSum = 0
    for j in 0..<n {
        let value = abs(j - i) * arr[j]
        tmpSum += value
    }
    minSum = min(minSum, tmpSum)
}

print(minSum)