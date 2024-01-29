let v = Int(readLine()!)!

var result = ""
for i in 0..<v {
    for j in 0..<v {
        result += "\((v * i + j) % 9 + 1) "
    }
    result.removeLast()
    result += "\n"
}

print(result)