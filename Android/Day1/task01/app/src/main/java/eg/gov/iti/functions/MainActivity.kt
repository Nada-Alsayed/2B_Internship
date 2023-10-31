package eg.gov.iti.functions

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import kotlin.math.pow

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
    }
    //task01
    fun sayWelcomeToUser(name: String) {
        println("Hello, $name! Welcome in Kotlin Project.")
    }
    //task02 print evens
    var myNums = arrayOf(1,2.3,4,5,6,7,8,9,10)
    fun printEvenNumbers(numbers: Array<Int>) {
        for (number in numbers) {
            if (number % 2 == 0) {
                println(number)
            }
        }
    }
    //task03 count vowels
    fun countVowels(input: String): Int {
        val englishVowels = arrayOf('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U')
        var count = 0

        for (c in input) {
            if (c in englishVowels) {
                count++
            }
        }
        return count
    }
    //task04 reverse
    fun reverseString1(input: String): String {
        return input.reversed()
    }
    fun reverseString2(input: String): String {
        var reversed = ""
        for (i in input.length - 1 downTo 0) {
            reversed += input[i]
        }
        return reversed
    }
    // task05 palindrome
    fun isPalindrome(input: String): Boolean {
        val lowerString = input.toLowerCase()
        return lowerString == lowerString.reversed()
    }
    //task06 print
    fun print(string: String) : Unit {
        println(string)
    }
    //task07 Rectangle area
    fun calculateRectangleArea(length: Float , width: Float): Float {
        return length * width
    }
    //task08 Body Mass Index
    fun calculateBMI(height: Float = 1.0F, weight: Float = 1.0F): Float {
        return weight / height.pow(2)
    }
    //task09 Circle area
    fun calculateCircleArea(radius: Double, pi: Double = 3.14): Double {
        return pi * radius.pow(2)
    }
    //task10 print person
    fun printPerson(name: String, age: Int, city: String) {
        println("Name: $name")
        println("Age: $age")
        println("City: $city")
    }
    //lambda01  calling calcMult(2,2,multiply)
    var multiply = {x:Int,y:Int -> x*y}
    fun calcMult(number1:Int,number2:Int,equation:(Int,Int)->Int) : Int{
        return equation(number1,number2)
    }

    //lambda02  calling calcSquareRoot(2,squareRoot)
    var squareRoot = {x:Int-> x*x}
    fun calcSquareRoot(number1:Int,equation:(Int)->Int) : Int{
        return equation(number1)
    }

    //lambda03  calling calcIsEven(2,isEven)
    var isEven = {x:Int-> x%2}
    fun calcIsEven(number1:Int,equation:(Int)->Int) : Boolean{
        return equation(number1) == 0
    }

    //lambda04  calling calcIsEven(2,isEven)
    var avg = {x :Array<Int> ->
        var sum = 0
        for (i in x) {
            sum += x[i]
        }
        sum/x.size
    }
    fun calcAvrage(numbers:Array<Int>,equation:(Array<Int>)->Float) : Float{
        return equation(numbers)
    }

    //lambda05 filter
    val strings = listOf("Karima", "Kariman", "Hala", "Nada")
    val filteredStrings = strings.filter { it.startsWith("K") }
       // println("Strings starting with 'K': $filteredStrings")

    //way 2
    val filterByK: (List<String>) -> List<String> = { inputList ->
           val filteredList = mutableListOf<String>()

           for (str in inputList) {
               if (str.isNotEmpty() && str[0] == 'K') {
                   filteredList.add(str)
               }
           }

           filteredList
       }
    //val filteredStrings = filterByK(strings)

    //recursive01
    fun calcSumOfNumberDigits(number: Int): Int {
        return if (number < 10) {
            number
        } else {
            val lastDigit = number % 10
            val remainingDigits = number / 10
            lastDigit + calcSumOfNumberDigits(remainingDigits)
        }
    }

    //recursive02
    fun power(base: Int, exponent: Int): Int {
        if (exponent == 0) {
            return 1
        }
        return base * power(base, exponent - 1)
    }

    //recursive03
    fun sumArray(arr: IntArray, index: Int = 0): Int {
        if (index == arr.size) {
            return 0
        }
        return arr[index] + sumArray(arr, index + 1)
    }

    //recursive04
    fun findSmallestNumberInArray(arr: IntArray, index: Int = 0): Int {
        if (index == arr.size - 1) {
            return arr[index]
        }
        val smallest= findSmallestNumberInArray(arr, index + 1)
        return if (arr[index] < smallest) arr[index] else smallest
    }

    //recursive05 permutations
    fun permutations(input: String): Set<String> {
        if (input.length <= 1) {
            return setOf(input)
        }

        val result = mutableSetOf<String>()
        for (i in input.indices) {
            val first = input[i]
            val rest = input.substring(0, i) + input.substring(i + 1)
            for (perm in permutations(rest)) {
                result.add(first + perm)
            }
        }
        return result
    }

}