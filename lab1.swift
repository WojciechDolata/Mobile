// import UIKit
import Foundation

//zad 1
var str = "str"
var int = 5
var real = 2.5
print(str)
print(int)
print(real)

//zad 2
let pi = 3.1415
print(pi)

//zad 3
let newC = str + String(int)
let newerC = str + "\(real)"
print(newC)
print(newerC)


//zad 4
var arr = [5,2,3]
print(arr)
var map = ["a" : "aaa", "b": "bbb",]
print(map["b"])

//zad 5
arr.append(1)
print(arr)
map["c"] = "ccc"
print(map)

//zad 6
var associative = ["29-11-14": [4,5,21,30,31,49], "27-11-14": [5,8,10,19,23,40]]
print(associative)

//zad 7
var emptyAssociative = [Character : Int] ()

//zad 8
let ran = "ABCDEFGHIJ"
var j = 0
for i in ran {
    j = j+1
    emptyAssociative[i] = j
}
print(emptyAssociative)

//zad 9
for elem in associative["29-11-14"] ?? [] {
    print("- \(elem)")
}

//zad 10
func foo(a: Int, b: Int) -> Int {
    if a == b {
        return a
    }
    else {
        if a > b {
            return foo(a:a-b,b:b)
        }
        else {
            return foo(a:a,b:b-a)
        }
    }
}

print(foo(a:123, b:1230))

//zad 11
func foo2(a: Int, b: Int) -> (Int, Int, Int) {
    let c = foo(a: a, b: b)
    return (c, a/c, b/c)
}

print(foo2(a:123, b:1230))

//zad 12

func cipher (s: String, f: (Character) -> Character) -> String {
    return String(s.map(f))
}
let myMap = ["G" : "A", "D": "E", "R" : "Y", "P" : "O", "L" : "U", "K" : "I"]
print(cipher(s:"CCCGDRPLK", f: {(a: Character) -> Character in Character(myMap[String(a)] ?? String(a))}) )

//zad 13
var associative2 = associative
associative.forEach({(key:String, val:[Int]) -> Void in associative2[key] = val.map({(a: Int) -> Int in return a%2}) })
print(associative2)

//zad 14
class NamedObject {
    var name: String
    func describe() -> Void {
        print(name)
    }
    init(s: String) {
      name = s
    }
}

var newObj = NamedObject(s: "Obj")
newObj.describe()

//zad 15

class Sphere : NamedObject {
    let pi = 3.1415
    var radius: Double
    init(r: Double) {
        radius = r
        super.init(s: "newSphere")
    }
    
    override func describe () -> Void {
      super.describe()
      print(radius)
    }

    func displayVolume() -> Void {
      print(String(radius * radius * radius * pi * 4 / 3))
    }

    func setVolume(v: Double) -> Void {
      radius = pow(v / (pi * 4 / 3), (1/3))
    }
}

var newSph = Sphere(r: 10.0)
newSph.describe()
newSph.displayVolume()
newSph.setVolume(v: 200)
newSph.describe()
