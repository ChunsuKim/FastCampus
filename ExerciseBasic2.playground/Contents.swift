// Exercise Basic 2

// Conditional Statements
//- 학점을 입력받아 각각의 등급을 반환해주는 함수 (4.5 = A+,  4.0 = A, 3.5 = B+ ...)
let testScore: Double = 3

switch testScore {
case 4.1...4.5 :
    print("Your final test grade is A+")
case 3.6...4.0 :
    print("Your final test grade is A")
case 3.1...3.5 :
    print("Your final test grade is b+")
default:
    print("You are failed!!")
}


//- 특정 달을 숫자로 입력 받아서 문자열로 반환하는 함수 (1 = "Jan" , 2 = "Feb")
let month: Int = 2

switch month {
case 1 :
    print("Jan")
case 2 :
    print("Feb")
case 3 :
    print("Mar")
case 4 :
    print("Api")
case 5 :
    print("May")
case 6 :
    print("Jun")
case 7 :
    print("Jul")
case 8 :
    print("Aug")
case 9 :
    print("Sep")
case 10 :
    print("Oct")
case 11 :
    print("Nov")
case 12 :
    print("Dec")
default :
    print("Not a month")
}


//- 세 수를 입력받아 세 수의 곱이 양수이면 true, 그렇지 않으면 false 를 반환하는 함수 (switch where clause 를 이용해 풀어볼 수 있으면 해보기)
let tripleMultiply = (1, 2, 4)
switch tripleMultiply {
case let (x, y, z) where (x * y * z) >= 0:
    print("\(x * y * z) is positive number so that it is true!")
default:
    print("The value is negative number so that it is false.")
}


//- 정수를 입력받아 윤년인지 아닌지 판단하는 함수 (2월 29일이 있는 해.  매 4년 마다 윤년. 매 100년 째에는 윤년이 아님. 매 400년 째에는 윤년)
func leapYear(_ y: Int) {
    if ((y % 4) == 0) != ((y % 100) == 0 ) || ((y % 400) == 0) {
        print("\(y) is a leapyear!")
    } else {
        print("\(y) is not a leapyear.")
    }
}
leapYear(2019)


// Loops
//- 자연수 하나를 입력받아 그 수의 Factorial 을 구하는 함수 (팩토리얼 :  5! = 5 x 4 x 3 x 2 x 1)
var num: Int = 7
var factorial: Int = 1
var n: Int = num + 1

for i in 1..<n {
    factorial = factorial * i
}
print("Factorial of",num,"is :", factorial)


//- 자연수 두 개를 입력받아 첫 번째 수를 두 번째 수만큼 제곱하여 반환하는 함수 (2, 5 를 입력한 경우 결과는 2의 5제곱)
let twoNumbers: (Int, Int) = (3, 5)

var firstNum = twoNumbers.0
var secondNum = twoNumbers.1
var result = 1

for _ in 1...secondNum {
    result *= firstNum
}
print(result)


//- 자연수 하나를 입력받아 각 자리수 숫자들의 합을 반환해주는 함수 (1234 인 경우 각 자리 숫자를 합치면 10)
//var someNum: Int = 24
//var allAdd: Int = 0
//var n1: Int = someNum
//
//for _ in 1...n1 {
//    allAdd += someNum
//    someNum += 1
//}
//print(allAdd)


//- 자연수 하나를 입력받아 1부터 해당 숫자 사이의 모든 숫자의 합을 구해 반환하는 함수를 만들되, 그 합이 2000 을 넘는 순간 더하기를 멈추고 바로 반환하는 함수
func someNum1(_ number1 : Int) -> Int {
    var result1 : Int = 0
    for index1 in 0...number1 {
        result1 += index1
        if (result1 > 2000){
            break
        }
    }
    return result1
}
print(someNum1(50))


//- 1 ~ 50 사이의 숫자 중에서 20 ~ 30 사이의 숫자만 제외하고 그 나머지를 모두 더해 출력하는 함수
