import UIKit

var str = "lesson 6 homework"

//1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.



class PplInQueue {
    var name: String
    var age : Int
    var high : Int
    init(name: String, age: Int, high : Int) {
        self.name = name
        self.age = age
        self.high = high
    }
}

extension PplInQueue : CustomStringConvertible {
    var description: String{
        return "[Name: \(name), age: \(age), high: \(high)]"
    }
}

struct Stack<T> {
    private var elements: [T] = []
    mutating func push(_ element: T) {
        elements.append(element)
    }
    mutating func pop() -> [T]? {
        for index in elements.enumerated() {
            var index = 0
            index += 1
            if elements.count % 9 == 0 {
                elements.removeFirst()
            }
        }
        return elements
    }
    func printElements() {
        print ( elements )
    }
}

let Alex = PplInQueue(name: "Алексей", age: 19, high: 185)
let Vadim = PplInQueue(name: "Вадим", age: 27, high: 179)
let Maria = PplInQueue(name: "Мария", age: 38, high: 167)
let Kamilla = PplInQueue(name: "Камилла", age: 21, high: 172)

var ppl = Stack<PplInQueue>()

ppl.push(Alex)
ppl.push(Vadim)
ppl.push(Maria)
ppl.push(Kamilla)

ppl.pop()

ppl.printElements()


// 2.Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)

var arrayPpl: () = ppl.printElements()

extension Stack {
    func filter(_ predicate : (T) -> Bool) -> [T] {
        return self.elements.filter(predicate)
    }
}

