import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

let value = readLine()!.split(separator: " ").map { Int($0)! }
print(lcm(value[0], value[1]))