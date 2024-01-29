let v = Int(readLine()!)!
let a = 1
(0...v-1).forEach { i in 
    let result = ((v * i)..<(v * i + v)).map { String($0 % 9 + 1) }.joined(separator: " ")
    print(result)
}