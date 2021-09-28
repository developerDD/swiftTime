import UIKit

var greeting = "Hello, playground"
/*
 Кортежи
 */
// Задание №1
/*
 Объявите константу и запишите в нее свое имя.
 Объявите переменную типа UInt8 и запишите в нее свой возраст.
 Объявите кортеж и явно определите его тип данных, как (name: String, age: Int).
 В первый элемент кортежа запишите значение константы с именем.
 Во второй элемент кортежа запишите значение из переменной с вашим возрастом.
 */

//        let name = "Alex"
//        let age:UInt8 = 16
//        var tuple: (name: String, age: Int)
//        tuple.name = name
//        tuple.age = Int(age)
// Задание №2
/*
 Объявите кортеж, способный хранить три значения типа Int16.
 Одним выражением объявите две константы типа Int и проинициализуйте им произвольные значения.
 В первые два значения кортежа запишите значения из данных переменных, а в третий их сумму.
 */

//        var tuple1: (Int16,Int16,Int16)
//        let (a,b)=(1,2)
//        tuple1=(Int16(a),Int16(b),Int16(a+b))

//Задание №5
/*
 Вам даны две целочисленные переменные со значениями 12 и 21. Поменяйте их значения местами
 без использования буферной переменной и математических операций.
 */

//        var aa=12
//        var bb=21
//        (aa,bb)=(bb,aa)
//print(aa,bb)

/*
 Задание 6

 1) Создайте кортеж с двумя параметрами: ваш любимый фильм и ваше любимое число. Все элементы кортежа должны быть именованными.
 2) Одним выражением запишите каждый элемент кортежа в две константы. Проверьте значения параметров с помощью вывода в области результатов.
 3) Создайте псевдоним типа, используемого для первого кортежа, назовите его Man. Создайте второй кортеж типа Man, но описывающий другого человека (с другими значениями). Обратите внимание, что элементы кортежа так же должны иметь имена.
 4) Обменяйте значения в кортежах между собой.
 5) Создайте новый кортеж, элементами которого будут любимое число из первого кортежа, любимое число из второго кортежа и разница любимых чисел первого и второго кортежей.
 */
//        var myTup = (myFilm:"Film",number1:34)
//        let (constFilm,constNumber) = myTup
//        print(constFilm,constNumber)
//        typealias Man = (myFilm: String, number1: Int)
//        var tul2: Man = ("Film2",12)
//
//        var bufTul = myTup
//
//        myTup = tul2
//        tul2 = bufTul
//
//        var tuple3 = (myTup.number1,tul2.number1,myTup.number1-tul2.number1)
//print(tuple3)

//Диапазоны RANGE
//
//for s in 1...9 {
//    print(s)
//}
//for d in 1..<10{
//    print(d)
//}
//*
// Задание 6
//
// Создайте диапазон целых чисел от -100 до 100 и инициализируйте его константе range
// Создайте переменную item типа UInt со значением 21.
// Создайте переменную типа Bool и запишите в нее результат проверки наличия значения переменной item в диапазоне range. Каким образом произвести данную проверку?
// */
//let range = -100...100
//var item: UInt = 21
//var inThere = range.contains(Int(item))
//print(inThere)
//
//*
// Задание 7
//
// Создайте диапазон, содержащий все заглавные латинские символы.
// Какими будут значения методов min() и max() для этого диапазона?
// Какими будут значения свойств lowerBound и upperBound для этого диапазона?
// */
//var ABC = "A"..<"Z"
// max i min для числових диапазонов
//print(ABC.lowerBound)
//print(ABC.upperBound)
//
//*Triangular numbers are so called because of the equilateral triangular shape that they occupy when laid out as dots. i.e.
// */
//func triangular(_ n: Int) -> Int{
//var coutn = 0
//
//  if n<1{
//    return 0
//  }
//
//for i in 1...n{
//  coutn+=i
//}
// return coutn
//}
//
//*
// You will be given an array a and a value x. All you need to do is check whether the provided array contains the value.
// The type of a and x can be String or Int.
// Return true if the array contains the value, false if not.
// */
//
//func check<T: Equatable>(_ a: [T], _ x: T) -> Bool {
//    return a.contains(x)
//}
/*
 Создайте функцию, которая принимает целое число в качестве аргумента и возвращает "Четное" для чётных чисел или "Нечётное" для нечетных чисел.
 */
func evenOrOdd(_ number:Int) -> String {
   return number % 2 == 0 ?"Even":"Odd"
}
/*
 Реализация функции, которая преобразует данное логическое значение в его строковое представление.

 Примечание: Будут даны только допустимые входные данные.
 */
func booleanToString(_ b: Bool) -> String {
    return b ?"true":"false"
    // или String(b)
}
/*
 Если задано число в месяц от 1 до 12, возвращаем в какой квартал года оно принадлежит целому числу.

 Например: второй месяц (февраль) является частью первого квартала; шестой месяц (июнь) - частью второго квартала; и одиннадцатый месяц (ноябрь) - частью четвертого квартала.
 */
func quarter(of month: Int) -> Int {
    switch month {
    case 1...3:
        return 1
    case 4...6:
        return 2
    case 7...9:
        return 3
    default:
        return 4
    }
    //  или return (month + 2) / 3
  }
/*
 Задан массив целых чисел как строк и чисел, возвращаем сумму значений массива как все числа.
 */
//var arr = [9, 3, "7", "3"] as [Any]
//var sum = 0
//for x in arr{
//    if x is String{
//        sum+=(x as! NSString).integerValue
//        continue
//    }
//    sum+=x as! Int
//}
//return arr.reduce(0) { $0 + (Int("\($1)") ?? 0) }

//Array chapter
/*
 Задание 4

 1)Создайте массив, состоящий из четырех целочисленных элементов

 2)Сделайте так, чтобы вместо второго и третьего элементов массива (с индексами 1 и 2) был элемент, содержащий сумму начального и конечного элементов данного массива. После этого в массиве должно остаться 3 элемента.

 3) Отсортируйте элементы по возрастанию
 */
//var arr2 = [1,2,3,4]
//arr2.remove(at: 1)
//arr2.remove(at: 1)
//arr2.insert(arr2[0]+arr2[1], at: 1)
//arr2.sort()
/* or
var arr = [1,2,3,4]
arr.remove(at: 1)
arr[1] = arr[0]+arr[2]
arr // [1, 5, 4]
arr.sort() // [1, 4, 5]
*/
/*
 Задание 5

 1) Создайте массив, состоящий из всех целых чисел от 1 до 100

 2) Создайте пустой массив типа Array<Int>

 3) Проинициализируйте пустому массиву элементы с 25го по 50ый
 */
//var mas = Array(1...100)
//var masEmptyInt = [Int]()
//masEmptyInt = Array(mas[24...49])

/*
 Задание 6

 1) Создайте массив arr из пяти элементов типа Character

 2) В массив arr вставьте вторым элементом (не вместо второго, а между первым и вторым) символ “z”

 3) Создайте переменную i типа UInt8 и проинициализируйте ей количество элементов массива arr.
 */
//var arr = ["a","b","c","d","f"]
//arr.insert("z",at: 1)
//var i  = (UInt8)(arr.count)
//CodeWar
/*
 Если задана строка цифр, вы должны заменить любую цифру ниже 5 на '0' и любую цифру 5 и выше на '1'. Верните полученную строку.
 */
/*func fakeBin(digits: String) -> String {
  //your code here
    var strRes = ""
    for s in digits {
        if s.isNumber{
            let n  = Int(String(s))
            if n!>=5{
                strRes.append("1")
            }else {
                strRes.append("0")
            }
        }
    }
  return strRes
} // or return String(digits.map { Int(String($0))! >= 5 ?  "1" : "0" })
 */

/*
 Задание 6

 1) Объявите множество taskSet1, состоящий из всех целочисленных элементов от 1 до 10
 2) Объявите множество taskSet2, состоящий из всех целочисленных элементов от 5 до 15
 3) Создайте множество taskSet3, состоящий из элементов, которые входят и в taskSet1, и в taskSet2
 4) Создайте множество taskSet4, состоящий из элементов, которые не пересекаются в taskSet1 и taskSet2
 5) Запишите в переменную count типа UInt8 количество элементов в массиве taskSet4. Какое значение примет эта переменная?
 */

var taskSet1: Set = [Array(1...10)]
var taskSet2: Set = [Array(5...15)]
var taskSet3 = taskSet1.union(taskSet2)
var taskSet4 = taskSet3.symmetricDifference(taskSet2)
print(taskSet4)



