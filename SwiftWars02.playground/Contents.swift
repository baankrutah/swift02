//: Playground - noun: a place where people can play

print("Hello world")

var name = "Tanakrit"
var age: Int = 20
age = 22
var lastName: String
lastName = "Saisillapee"

let apple = 3
let orange: Int
orange = 4

print("My name is \(name)")
print("I'm \(age) years old")

var listOfStudent: [String]
listOfStudent = ["Pan", "King", "Pang", "Pond"]
listOfStudent[0]
listOfStudent[0] = "PanPan"
listOfStudent += ["Bat", "Tam"]

var ageOfStudent: [String: Int]
ageOfStudent = ["Pan": 22, "King": 22, "Pang": 20, "Pond": 20]
ageOfStudent["King"]
ageOfStudent["King"] = 23
ageOfStudent["Bat"] = 30
ageOfStudent

var anyArray: [Any]
anyArray = [21, "hello"]


var a: Int?
print(a)
a = 24
print(a)
a = 50
print(a!)
a = 20

if a == 50 {
    print("This is 50")
} else if a == 24 {
    print("This is 24")
} else {
    print("Something else")
}

var maybeNumber: Int? = 50
print(maybeNumber)

if let number = maybeNumber {
    print(number)
}

if var number = maybeNumber {
    print(number)
    number = 100
    print(number)
}

if let maybeNumber = maybeNumber {
    print(maybeNumber)
}



for var i = 0; i < listOfStudent.count; i++ {
    print(listOfStudent[i])
}

for name in listOfStudent {
    print(name)
}







var score = [100, 20, 65, 69, 71, 80, 70, 95]

for number in score {
    if number < 60 {
        print("Grade is F 😱")
    } else if number < 70 {
        print("Grade is D 😨")
    } else if number < 80 {
        print("Grade is C 😭")
    } else if number < 90 {
        print("Grade is B 😬")
    } else {
        print("Grade is A 😎")
    }
}


for number in score {
    switch number {
    case 0..<60:
        print("Grade is F 😱")
    case 60...69:
        print("Grade is D 😨")
    case 70...79:
        print("Grade is C 😭")
    case 80...89:
        print("Grade is B 😬")
    case 90...100:
        print("Grade is A 😎")
    default:
        print("number is something else")
    }
}






func sum5(number: Int) -> Int {
    return number + 5
}

sum5(10)
var num = sum5(20)
print(sum5(50))


func movePosition(x: Int, y: Int) -> (x: Int, y: Int) {
    return (x + 5, y + 5)
}

func movePositionTuple(position: (x: Int, y: Int)) -> (x: Int, y: Int) {
    return (position.x + 5, position.y + 5)
}

movePosition(5, y: 5)
var position = movePosition(5, y: 5)
var x = position.0
var y = position.1

position.x
position.y

movePositionTuple((x: 10, y: 10))




func sum(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

sum(5,4,10,3,7,83,5)
    







var student = 5

func getGrade(score: Int) -> String {
    var grade: String
    
    switch score {
    case 0..<60:
        grade = "Grade is F 😱"
    case 60...69:
        grade = "Grade is D 😨"
    case 70...79:
        grade = "Grade is C 😭"
    case 80...89:
        grade = "Grade is B 😬"
//    case 90...100:
//        grade = "Grade is A 😎"
//        fallthrough
//    case 100:
//        grade = "เกียรติ์นิยม"
        
    case 90...100 where score == 100 :
        grade = "เกียรติ์นิยม"
        
    default:
        grade = "number is something else"
    }
    
    return grade
}

for number in score {
    var grade = getGrade(number)
    print (grade)
}




