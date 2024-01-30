let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int($0)! }

var result = 0
for i in 0..<n {
    for j in (i+1)..<n {
        for k in (j+1)..<n {
            if i != j && j != k && arr[i] <= arr[j] && arr[j] <= arr[k] {
                result += 1
            }
        }
    }
}

print(result)