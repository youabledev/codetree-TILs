import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}

let value = readLine()!.split(separator: " ").map { Int($0)! }
print(gcd(value[0], value[1]))