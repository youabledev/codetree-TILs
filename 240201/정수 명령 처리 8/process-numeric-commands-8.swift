class Node {
    var data: Int
    var next: Node?
    var prev: Node?
    
    init(data: Int, next: Node? = nil, prev: Node? = nil) {
        self.data = data
        self.next = next
        self.prev = prev
    }
}

class DoubleLinkedList {
    var head: Node?
    var tail: Node?
    var count: Int = 0 /// 노드 갯수
    
    func push_front(_ newData: Int) {
        let newNode = Node(data: newData)
        newNode.next = head
        
        if head != nil {
            head?.prev = newNode
            head = newNode
            newNode.prev = nil
        } else {
            head = newNode
            tail = newNode
            //            newNode.prev = nil
        }
        
        self.count += 1
    }
    
    func push_back(_ newData: Int) {
        let newNode = Node(data: newData)
        newNode.prev = tail
        
        if tail != nil {
            tail?.next = newNode
            tail = newNode
            newNode.next = nil
        } else {
            head = newNode
            tail = newNode
            newNode.next = nil
        }
        
        self.count += 1
    }
    
    func pop_front() -> Int? {
        guard let head = head else { return nil }
        
        let tmp = head
        if head.next == nil {
            self.head = nil
            self.tail = nil
            self.count = 0
            return tmp.data
        } else {
            tmp.next?.prev = nil
            self.head = tmp.next
            tmp.next = nil // 이전 head의 next 값을 지워 줌
            self.count -= 1
            return tmp.data
        }
    }
    
    func pop_back() -> Int? {
        guard let tail = tail else { return nil }
        
        let tmp = tail
        if tail.prev == nil {
            self.head = nil
            self.tail = nil
            self.count = 0
            return tail.data
        } else {
            tmp.prev?.next = nil
            self.tail = tmp.prev
            tmp.prev = nil
            self.count -= 1
            return tmp.data
        }
    }
    
    func size() -> Int? {
        return self.count
    }
    
    func isEmpty() -> Bool {
        return self.count == 0
    }
    
    func front() -> Int? {
        return head?.data
    }
    
    func back() -> Int? {
        return tail?.data
    }
}

enum DoubleLinkedListCommand: String {
    case push_back
    case push_front
    case pop_front
    case pop_back
    case size
    case empty
    case front
    case back
}

    
    let n = Int(readLine()!)!
    let list = DoubleLinkedList()

    (1...n).forEach { _ in
        let v = readLine()!.split(separator: " ")
        let command = DoubleLinkedListCommand(rawValue: String(v.first!))!
        runCommand(command, Int(v.last ?? ""))
    }
    
    func runCommand(_ command: DoubleLinkedListCommand, _ v: Int?) {
        switch command {
        case .push_back: list.push_back(v!)
        case .push_front: list.push_front(v!)
        case .pop_front: print(list.pop_front()!)
        case .pop_back: print(list.pop_back()!)
        case .size: print(list.size()!)
        case .empty: list.isEmpty() ? print(1) : print(0)
        case .front: print(list.front()!)
        case .back: print(list.back()!)
        }
    }