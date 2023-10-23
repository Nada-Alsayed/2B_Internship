import UIKit

// Task_01
func introduction(name:String,home:String,age:Int)->String{
    return "\(name),\(age),is From \(home) "
}
print(introduction(name: "Nada", home: "Cairo", age: 23))

// Task_02

func checkNumber(num:Int){
    if(num % 2 == 0 || num == 0){
        print("It's even Number")
    }else{
        print("It's Odd Number")
    }
}
checkNumber(num: 0)
checkNumber(num: 3)

// Task_03

func calcGrade(stGrade:Float,totalGrade:Int)->String{
    let stTotalGrades:Float = (stGrade/Float(totalGrade))*100
    print("\(stTotalGrades)")
    switch(stTotalGrades){
    case 0..<55:
        return "Fail"
    case 55..<65:
        return "Pass"
    case 65..<75:
        return "Good"
    case 75..<85:
        return "very Good"
    case 85...100:
        return "Excellent"
    default:
        return "invalid"
    }
}
print(calcGrade(stGrade: 55, totalGrade: 100))

