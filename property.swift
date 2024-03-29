import Swift

/*
저장 프로퍼티
연산 프로퍼티
인스턴스 프로퍼티
타입 프로퍼티
*/

// 프로퍼티는 구조체, 클래스, 열거형 내부에 구현할 수 있습니다
// 다만 열거형 내부에는 연산 프로퍼티만 구현할 수 있습니다
// 연산 프로퍼티는 var로만 선언할 수 있습니다

struct Student {
	// 인스턴스 저장 프로퍼티
	var name: String = ""
	var `class`: String = "Swift"
	var koreanAge: Int = 0
	
	// 인스턴스 연산 프로퍼티
	var westernAge: Int {
		get {
			return koreanAge - 1
		}
		
		set(inputValue) {
			koreanAge = inputValue + 1
		}
	}
	
	// 타입 저장 프로퍼티
	static var typeDescription: String = "학생"
	
	/* 인스턴스 메서드
	func selfIntroduce() {
		print("저는 \(self.class)반 \(name)입니다")
	}
	*/
	
	// 읽기 전용 인스턴스 연산 프로퍼티
	var selfIntroduction: String {
		get {
			return "저는 \(self.class)반 \(name)입니다"
		}
	}
	
	// 읽기 전용 타입 연산 프로퍼티
	// 읽기 전용에서는 get을 생략할 수 있습니다
	static var selfIntroduction: String {
		return "학생타입입니다"
	}
}

// 타입 연산 프로퍼티 사용
print(Student.selfIntroduction)
// 학생타입입니다

// 인스턴스 생성
var SeongMinK: Student = Student()
SeongMinK.koreanAge = 25

// 인스턴스 저장 프로퍼티 사용
SeongMinK.name = "SeongMinK"
print(SeongMinK.name)
// SeongMinK

// 인스턴스 연산 프로퍼티 사용
print(SeongMinK.selfIntroduction)
// 저는 Swift반 SeongMinK입니다

print("제 한국나이는 \(SeongMinK.koreanAge)살이고, 미국나이는 \(SeongMinK.westernAge)살 입니다")
// 제 한국나이는 25살이고, 미국나이는 24살입니다

struct Money {
	var currencyRate: Double = 1100
	var dollar: Double = 0
	var won: Double {
		get {
			return dollar * currencyRate
		}
		set {
			dollar = newValue / currencyRate
		}
	}
}

var moneyInMyPocket = Money()

moneyInMyPocket.won = 11000

print(moneyInMyPocket.won)
// 11000

moneyInMyPocket.dollar = 10

print(moneyInMyPocket.won)
// 11000

// 저장 프로퍼티와 연산 프로퍼티의 기능은 함수, 매소드, 클로저, 타입 등의
// 외부에 위치한 지역/전역 변수에도 모두 사용 가능합니다

var a: Int = 100
var b: Int = 200
var sum: Int {
	return a + b
}

print(sum)	// 300