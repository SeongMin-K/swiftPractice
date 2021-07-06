import Swift

func sum(a: Int, b: Int) -> Int {
	return a + b
}

func printMyName(name: String) -> Void {
	print(name)
}

func printYourName(name: String) {
	print(name)
}

func maximumIntegerValue() -> Int {
	return Int.max
}

func hello() -> Void { print("Hello") }

func bye() { print("Bye") }

sum(a: 3,  b: 5)				// 8
printMyName(name: "SeongMinK")	// SeongMinK
printYourName(name: "Swift")	// Swift
maximumIntegerValue()			// Int의 최댓값
hello()							// Hello
bye()							// Bye