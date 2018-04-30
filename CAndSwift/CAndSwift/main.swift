//
//  main.swift
//  CAndSwift
//
//  Created by 盘国权 on 2018/4/29.
//  Copyright © 2018年 pgq. All rights reserved.
//

import Foundation

//0定义C类型
let cInt: CInt = 2
let cChar: CChar = 49

//基本类型引用
let _ = global_ten

/*
struct PQButtonColor: RawRepresentable {
    typealias RawValue = String
    
    init(rawValue: Self.RawValue)
    var rawValue: RawValue { get }
    
    static var red: PQButtonColor { get }
    static var green: PQButtonColor { get }
    static var blue: PQButtonColor { get }
}
*/

extension PQButtonColor{
    static var pink: PQButtonColor {
        return PQButtonColor(rawValue: "Pink")
    }
}

let bColor: PQButtonColor = .red
let bColorString = bColor.rawValue // red


extension Shape {
    static  var ellise: Shape{
        return Shape(4)
    }
}

let ellist: Shape = .ellise


//方法
let sumNum = add(30, 30)

let num1 = 20
// 这里必要要转化为CInt类型
let sumNum1 = add(Int32(num1), 2)


// 使用方法1  需要注意的是 count和数组的元素个数要保持一致
let _ = vsum(7, getVaList([1,2,3,4,56,7,8]))

// 使用方法2
let _ = withVaList([1,2,3]){
    vsum(3, $0)
}


// struct

/*
struct Location {
    var x: CInt
    var y: CInt
}
*/
var loc = Location(x: 0, y: 0);

moveY(loc, 5)

// 再是用CF_SWIFT_NAME修饰之后就会为Struct生成一个Extension
/*
extension Location{
    func moveX(delta: CInt){
        return Location(x: self.x + delta, y: self.y)
    }
}
*/

loc = loc.moveX(delta: 5)


//工厂方法
let _ = Location(xy: 3)


// get set
Location.origin.y = 10
let _ = Location.origin.x



// union
/*
 struct ASCII{
 var character: Int8
 var code: CInt
 
 init(character: Int8)
 init(code: CInt)
 }
 */

let c = ASCII(character: CChar(65))
print(c.code)


//struct union

let car = Car.init(.init(series: 50), info: .init(pricing: 100, isAvailable: true))
print(car.series)


//enum
/*
struct CarType: RawRepresentable, Equatable {}
var BMW: CarType { get }
var AUDI: CarType { get }
var BENZ: CarType { get }
 */

let _ = BMW
let _ = AUDI
let _ = BENZ

let bmw: PQCarType = .PQBMW





















