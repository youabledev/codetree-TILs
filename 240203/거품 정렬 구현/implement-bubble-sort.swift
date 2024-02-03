let N = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int($0)! }

for i in 0..<N - 1 {
    for j in 0..<N - 1 - i where arr[j] > arr[j + 1] {
        arr.swapAt(j, j+1)
    }
}

print(arr.map(String.init).joined(separator: " "))