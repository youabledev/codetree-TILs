let k = readLine()!.split(separator: " ").map{ Int($0)! }.last!
let arr = readLine()!.split(separator: " ").map{ Int($0) }.sorted()
print(arr[k-1])