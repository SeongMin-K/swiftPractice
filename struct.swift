import Swift

struct Sample {
	var mutableProperty: Int = 100		// 가변 프로퍼티
	let immutableProperty: Int = 100	// 불변 프로퍼티
	
	static var typeProperty: Int = 100	// 타입 프로퍼티
	
	// 인스턴스 메소드
	func instanceMethod() {
		print("instance method")
	}
	
	// 타입 메소드
	static func typeMethod() {
		print("type method")
	}
}

// 가변 인스턴스
var mutable: Sample = Sample()

mutable.mutableProperty = 200
//mutable.immutableProperty = 200

// 불변 인스턴스
let immutable: Sample = Sample()

//mutable.mutableProperty = 200
//mutable.immutableProperty = 200

// 타입 프로퍼티 및 메소드
Sample.typeProperty = 300
Sample.typeMethod()		// type method

//mutable.typeProperty = 400
//mutable.typeMethod()

struct Student {
	var name: String = "unknown"
	var `class`: String = "Swift"
	
	static func selfIntroduce() {
		print("학생 타입입니다")
	}
	
	func selfIntroduce() {
		print("저는 \(self.class)반 \(name)입니다")
	}
}

Student.selfIntroduce()		// 학생 타입입니다

var seongmin: Student = Student()
seongmin.name = "SeongMinK"
seongmin.class = "스위프트"
seongmin.selfIntroduce()	// 저는 스위프트반 SeongMinK입니다

let jina: Student = Student()

// 불변 인스턴스이므로 프로퍼티 값 변경 불가
// 컴파일 오류 발생
//jina.name = "jina"
jina.selfIntroduce() // 저는 스위프트반 unknown입니다