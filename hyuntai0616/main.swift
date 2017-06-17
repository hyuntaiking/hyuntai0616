//
//  main.swift
//  hyuntai0616
//
//  Created by Hyuntai on 2017/6/16.
//  Copyright © 2017年 hyphen. All rights reserved.
//

import Foundation

var obj1 = Hyphen01()
print(obj1.x)

print(Hyphen02.x1)
var obj2 = Hyphen02()

Hyphen03.f2()

var myBike1 = Bike()
var myBike2 = Bike()
var myBike3 = Bike()
print("There are \(Bike.count) Bike")

var obj3 = Super1()
var obj4 = Sub11()
print("-----------------")
var obj5 = Sub12()
print("-Sub13----------------")
var obj6 = Sub13(1)
print("21---------------")
var obj7 = Sub21(1)
print("22---------------")
var obj8 = Sub22(3)
print("3---------------------")
var obj9 = Sub31(1)
print("4---------")
var obja = Sub41(x: 1.0)
var objb = Sub41(x: 1)
var objc = Sub42()
var objd = Sub42(x: 1)
print("-------")
var myID = TWId("A123456780")
if myID == nil {
    print("XX")
} else {
    print("OK")
}
print("------subscript--------")
var obj11 = MyClass11(x: 2)
print(obj11[2])
obj11.x = 2
for i in 1...9 {
    print(obj11[i])
}
print(obj11[3, 4])

print(obj11[3.14])
obj11[3.14] = 7.456
print(obj11.x)
print("-----------------")
var obj12 = Sub111()
print(obj12.x)
obj12.f1()
obj12.f2(x: 1)
obj12.f2(y: 1)
print("-----------------")
var obj31 = Super31()
var obj311 = Sub311()
var obj312 = Sub312()
print(obj31 is Super31)
print(obj311 is Sub311)
print(obj312 is Sub312)
print(obj311 is Super31)
print(obj311 is String) // is 判斷型別
obj31.f1()
obj311.f1()
obj312.f2()

var obj331: Super31 = Sub311()
print(obj331 is Super31)
print(obj331 is Sub311)
print(obj331 is Sub312)
obj331.f1() // Super31 只有f1()
var obj341 = obj331 as! Sub311
obj341.f2() // 打回原型就可呼叫f1()、f2()
//var obj351 = obj331 as! Sub312

if obj331 === obj341 {
    print("OK")
} else {
    print("XX")
}
obj331.f1() // 能否呼叫看型別，真正執行看骨子裡是什
            //         車子            法拉立
func needSuper31(obj: Super31) {
    obj.f1()
    if obj is Sub311 {
        (obj as! Sub311).f3()
    }
    if obj is Sub312 {
        (obj as! Sub312).f2()
    }
}
needSuper31(obj: obj311)
needSuper31(obj: obj312)

var obj351: Super31 = obj331 as Super31

func needObj(obj: AnyObject) {
    print(type(of: obj))
}

needObj(obj: obj311)
needObj(obj: obj1)
// Any => class object, struct value, enum.
// not func
func needAnything(something: Any) {
    print(type(of: something))
}

needAnything(something: "Hello")
needAnything(something: obj1)

extension Sub312 {
    func sayYa() {
        print("Ya")
    }
}
obj312.sayYa()

var aa = 1
extension Int {
    func whoru() {
        print("I am \(self.hashValue)")
    }
}
123.whoru()

