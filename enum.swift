import Swift

enum Weekday {
	case mon
	case tue
	case wed
	case thu, fri, sat, sun
}

var day: Weekday = Weekday.mon
day = .tue

print(day)

switch day {
case .mon, .tue, .wed, .thu:
	print("평일입니다")
case Weekday.fri:
	print("불금 파티!")
case .sat, .sun:
	print("신나는 주말!")
}

enum Fruit: Int {
	case apple = 0
	case grape = 1
	case peach			// 2
// case mango = 0
}

print("Fruit.peach.rawValue = \(Fruit.peach.rawValue)")
// Fruit.peach.rawValue == 2

enum School: String {
	case elementry = "초등"
	case middle = "중등"
	case high = "고등"
	case university
}

print("school.middle.rawValue = \(School.middle.rawValue)")
// school.middle.rawValue == 중등

print("school.university.rawValue = \(School.university.rawValue)")
// school.university.rawValue == university

//let apple: Fruit = Fruit(rawValue: 0)
let apple: Fruit? = Fruit(rawValue: 0)

if let orange: Fruit = Fruit(rawValue: 5) {
	print("rawValue 5에 해당하는 케이스는 \(orange)입니다")
} else {
	print("rawValue 5에 해당하는 케이스가 없습니다")
}	// rawValue 5에 해당하는 케이스가 없습니다

enum Month {
	case jan, feb, mar
	case apr, may, jun
	case jul, aug, sep
	case oct, nov, dec
	
	func printMessage() {
		switch self {
		case .mar,.apr, .may:
			print("따뜻한 봄~")
		case .jun, .jul, .aug:
			print("더운 여름~")
		case .sep, .oct, .nov:
			print("가을은 독서의 계절!")
		case .dec, .jan, .feb:
			print("추운 겨울입니다")
		}
	}
}

Month.mar.printMessage() // 따뜻한 봄~
