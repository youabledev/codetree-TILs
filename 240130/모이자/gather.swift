import Foundation

let _ = readLine()
let arr = readLine()!.split(separator: " ").map { Int($0)! }

var minSum = 100 * 100
for i in 0..<arr.count { // i 번째 집으로 모이면
    var tmpSum = 0
    for j in 0..<arr.count {
        let value = abs(j - i) * arr[j]
        tmpSum += value
    }
    minSum = min(minSum, tmpSum)
}

print(minSum)