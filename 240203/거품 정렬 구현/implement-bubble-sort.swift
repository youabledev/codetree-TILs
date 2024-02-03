let _ = readLine()
    var arr = Array(readLine()!.split(separator: " "))
    
    for i in 0..<arr.count - 1 {
        for j in 0..<arr.count - 1 - i where arr[j] > arr[j + 1] {
            arr.swapAt(j, j+1)
        }
    }
    print(arr.joined(separator: " "))