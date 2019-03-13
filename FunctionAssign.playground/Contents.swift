// 이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수 2점

func myname(name: String) -> String {
    let introducename = "My name is, " + name + "!"
    return introducename
}

func myage(old: String) -> String {
    let introduceage = "I am " + old + " years old."
    return introduceage
}

print(myname(name: "Chunsu Kim"))
print(myage(old: "37"))




// 정수를 하나 입력받아 2의 배수 여부를 반환하는 함수 8점
func multipliesOfTwo(number:Int) -> String {
    var trueFalse: String = ""
    
    if number%2 == 0 {
        trueFalse = "2의 배수"
    }else {
        trueFalse = "2의 배수가 아님"
    }
    
    return trueFalse
}

print(multipliesOfTwo(number: 6))
print(multipliesOfTwo(number: 7))




// 정수를 두 개 입력 받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10) 4점
func multiply(a:Int, b:Int = 10) -> Int {
    return a * b
}

print(multiply(a: 7))
print(multiply(a: 4, b: 6))




// 4과목의 시험 점수를 입력받아 평균 점수를 반환하는 함수 8점
func testAverage(_ testScore: Int...) -> Int {
    var average = 0
    for grade in testScore {
        average += grade
    }
    return average / testScore.count
}

print("My test average is : \(testAverage(90, 100, 95, 93, 100))")




// 점수(문자 또는 숫자)를 입력받아 학점을 반환하는 함수 만들기 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)

// 숫자를 입력받는 경우 5점
func myScore(score: Int) -> String {
    var grade = " "
    if score >= 90 {
        grade = "A"
    }else if score >= 80 {
        grade = "B"
    }else if score >= 70 {
        grade = "C"
    }else {
        grade = "F"
    }
    return grade
}

// 문자를 입력받는 경우 10점
func myGrade(grade: String) -> String {
    var score = " "
    let scoreWill:Int? = Int(grade)
    
    if scoreWill! >= 90 {
        score = "A"
    }else if scoreWill! >= 80 {
        score = "B"
    }else if scoreWill! >= 70 {
        score = "C"
    }else {
        score = "F"
    }
    return score
}

print("My grade is : " + myScore(score: 100))
print("My grade is : " + myGrade(grade: "90"))




// 점수(문자 또는 숫자)를 여러 개 입력받아 평균 점수에 대한 학점을 반환하는 함수 만들기 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)
// 10점
func myAverage(_ testScore: Int...) -> String {
    var average = 0
    for grade in testScore {
        average += grade
    }
    let sumGrade = average / testScore.count
    
    var credit = " "
    
    if sumGrade >= 90 {
        credit = "A"
    }else if sumGrade >= 80 {
        credit = "B"
    }else if sumGrade >= 70 {
        credit = "C"
    }else {
        credit = "F"
    }
    return credit
}

print("My average grade is : " + myAverage(90, 95, 93, 100, 97))
