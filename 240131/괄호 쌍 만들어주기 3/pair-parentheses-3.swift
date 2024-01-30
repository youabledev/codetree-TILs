let l = readLine()!.map { $0 }

var result = 0
for (index, value) in l.enumerated() {
    if value == "(" {
        for j in index..<l.count {
            if l[j] == ")" {
                result += 1
            }
            
        }
    }
}

print(result)