enum Command: String {
        case push_back, pop_back, size, `get`
    }

    var arr = [Int]()
    
    func processCommand(_ command: Command, _ value: String?) {
        switch command {
        case .push_back: arr.append(Int(value!)!)
        case .pop_back: arr.removeLast()
        case .size: print(arr.count)
        case .get: print(arr[Int(value!)! - 1])
        }
    }
    
    let n = Int(readLine()!)!
    (1...n).forEach { _ in
        let value = readLine()!.split(separator: " ").map { String($0) }
        processCommand(Command(rawValue: value.first!)!, value.last)
    }