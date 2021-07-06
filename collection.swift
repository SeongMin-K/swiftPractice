import Swift

// 빈 Int Array 생성
var integers: Array<Int> = Array<Int>()
integers.append(1)
integers.append(100)
integers.append(999)
//integers.append(101.1)

integers.contains(100)	// true
integers.contains(99)	// false

integers.remove(at: 0)	// 1
integers.removeLast()	// 100
integers.removeAll()	// []

integers.count

//integers[0]

// Array<Double>과 [Double]은 동일한 표현
// 빈 Double Array 생성
var doubles: Array<Double> = [Double]()

// 빈 String Array 생성
var strings: [String] = [String]()

// 빈 Character Array 생성
var characters: [Character] = []

// let을 사용하여 Array를 선언하면 불변 Array
let immutableArray = [1, 2, 3]

//immutableArray.append(4)
//immutableArray.removeALL()

//-----------------------------------------------------------------------

var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100

print(anyDictionary)	// ["someKey": "value", "anotherKey": 100]

anyDictionary["someKey"] = "dictionary"
print(anyDictionary)	// ["someKey": "dictionary", "anotherKey": 100]

anyDictionary.removeValue(forKey: "anotherKey")

anyDictionary["someKey"] = nil
print(anyDictionary)	// [:]

let emptyDictionary: [String: String] = [:]
let initalizedDictionary: [String: String] = ["name": "SeongMinK", "gender": "male"]

//emptyDictionary["key"] = "value"

//let someValue: String = initalizedDictionary["name"]

//-----------------------------------------------------------------------

// 빈 Int Set 생성
var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)	// 중복 X
integerSet.insert(99)	// 중복 X

print(integerSet)		// [100, 99, 1]
integerSet.contains(1)	// true
integerSet.contains(2)	// false

integerSet.remove(100)
integerSet.removeFirst()

integerSet.count

let setA: Set<Int> = [1, 2, 3, 4, 5]	// [5, 2, 3, 1, 4]
let setB: Set<Int> = [3, 4, 5, 6, 7]	// [5, 6, 7, 3, 4]

let union: Set<Int> = setA.union(setB)	// [2, 4, 5, 6, 7, 3, 1]

let sortedUnion: [Int] = union.sorted()	// [1, 2, 3, 4, 5, 6, 7]

let intersection: Set<Int> = setA.intersection(setB)	// [5, 3, 4] 교집합

let subtracting: Set<Int> = setA.subtracting(setB)		// [2, 1] 차집합
