import Swift

func greeting(friend: String, me: String = "SeongMinK") {
	print("Hello \(friend)! I'm \(me)")
}

greeting(friend: "hana")					// Hello hana! I'm SeongMinK
greeting(friend: "john", me: "eric")		// Hello john, I'm eric

// 함수 내부에서 전달인자를 사용할 때는 매개변수 이름을 사용한다
func greeting(to friend: String, from me: String) {
	print("Hello \(friend)! I'm \(me)")
}

// 함수를 호출할 때는 전달인자 레이블을 사용해야 한다
greeting(to: "hana", from: "SeongMinK")		// Hello hana! I'm SeongMinK


func sayHelloToFriends(me: String, friends: String...) -> String {
	return "Hello \(friends)! I'm \(me)!"
}
print(sayHelloToFriends(me: "SeongMinK", friends: "hana", "eric", "john"))
// Hello ["hana", "eric", "john"]! I'm SeongMinK!

print(sayHelloToFriends(me: "SeongMinK"))
// Hello []! I'm SeongMinK!


var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("eric", "SeongMinK")			// Hello eric! I'm SeongMinK

someFunction = greeting(friend:me:)
someFunction("eric", "yagom")				// Hello eric! I'm SeongMinK

//someFunction = sayHelloToFriends(me: friends:)

func runAnother(function: (String, String) -> Void) {
	function("jenny", "mike")
}

runAnother(function: greeting(friend:me:))	// Hello jenny! I'm mike

runAnother(function: someFunction)			// Hello jenny! I'm mike
