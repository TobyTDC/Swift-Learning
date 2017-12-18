//Generics Types

var numbers = Array<Int>()

let city = "Charlotte"
let streetName = Optional.some("SomeStreet")

var errorCodes = Dictionary<Int, String>()

//Linked lists

class Nodes<Key> {
    let key: Key
    
    var next: Nodes?
    weak var previous: Nodes?
    
    init(key: Key){
        self.key = key
    }
}

class LinkedList<Element>: CustomStringConvertible{
    
    typealias Node = Nodes<Element>
    
    private var head: Node?
    
    var first: Node? {
        return head
    }
    
    var last: Node? {
        if var node = head {
            while node.next != nil{
                node = node.next!
            }
            return node
        } else {
            return nil
        }
    }
    
    func append(_ value: Element) {
        let new = Node(key: value)
        if let lastNode = last {
            lastNode.next = new
            new.previous = lastNode
        } else {
            head = new
        }
    }
    
    func node(atIndex index: Int) -> Node {
        var node = head
        
        var counter = 0
        
        while node != nil {
            if counter == index { return node! }
            
            counter += 1
            node = node!.next
        }
        
        fatalError("Index out of bound")
    }
    
    
    func insert(_ value: Element, at index: Int){
        let nodeAtIndex = node(atIndex: index)
        let nodeBeforeIndex = nodeAtIndex.previous
        
        let new = Node(key: value)
        new.previous = nodeBeforeIndex
        new.next = nodeAtIndex
        
        nodeAtIndex.previous = new
        nodeBeforeIndex?.next = new
        
        if nodeBeforeIndex == nil {
            head = new
        }
    }
    
    var description: String {
        var output = "["
        var node = head
        while node != nil {
            output += "\(node!.key)"
            node = node!.next
            if node != nil { output += ", " }
        }
        return output + "]"
    }
    
}


let  list = LinkedList<String>()

list.append("Swift")
list.append("Language")
list.insert("Programming", at: 1)
list.node(atIndex: 1).key

class LinkedIntegers: LinkedList<Int> {
    
}

let newList = LinkedIntegers()
newList.append(1)





