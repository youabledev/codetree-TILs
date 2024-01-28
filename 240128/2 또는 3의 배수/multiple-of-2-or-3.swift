let value = Int(readLine()!)!
    print((1...value).map { ($0 % 2 == 0) || ($0 % 3 == 0) ? "1" : "0"}.joined(separator: " "))