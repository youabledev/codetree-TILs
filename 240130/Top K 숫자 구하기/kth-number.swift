let k = readLine()!.split(separator: " ").map{ Int($0)! }.last!
let arr = readLine()!.split(separator: " ").sorted()
print(arr[k-1])