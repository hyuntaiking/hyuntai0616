//
//  MyClasses.swift
//  hyuntai0616
//
//  Created by Hyuntai on 2017/6/16.
//  Copyright © 2017年 hyphen. All rights reserved.
//

import Foundation

class MyClass01 {}
class MyClass02 {
    var x: Int
    init(x: Int) {
        self.x = x
    }
}
class MyClass03 {
    var x = 123
    init() {}
}
class MyClass04 {
    var x: Int?
}
//-------Computed Property----------------
class MyClass05 {
    var x: Int { // 至少要有getter
        get {
            return 1
        }
        // setter can omitted
        set {
            // newValue
        }
    }
}
class MyClass06 {
    var y = 123
    var x: Int {
        return y * y
    }
}
//------Property Observer-------------------------
class MyClass07 {
    var x = 0 {
        willSet {
            // newValue
        }
        didSet {
            
        }
    }
}
//--------Type Property(工具程式用)----------------
class Hyphen01 {
    var x = 10
}
class Hyphen02 {
    static var x1 = 12
    static var x2: Int?
    static var x3: Int { // Type property only access type property
        return x1 * 100  // Can't access instance property
    }
    var x4 = 123
    var x1 = 321
    init() {
       print(x4)
       print(Hyphen02.x1) // ** x1 有兩個
       print(x1)
    }
}
//-------Type Method-------------------
class Hyphen03 {
    var x = 100
    static var y = 200
    func f1() {
        x += 1
        Hyphen03.f2()
        print("Hyphen03: f1()")
    }
    static func f1() { // Java都這樣寫
        print("Hyphen03:static f1()")
    }
    class func f3() {
    
    }
    static func f2() {
        y += 1
        f1()
    }
}
//--------Exercise---------
class Bike {
    static var count = 0
    init() {
        Bike.count += 1
    }
}
//------Inhertance 傳承----------
class Super1 {
    init() { // 預設建構式
        print("Super1 init()")
    }
}
class Sub11: Super1 {

}
class Sub12: Super1 {
    override init() {
        //super.init()
        print("Sub12 init()")
        // 即使未call父類別的func()，它會在return前call
    }
}
class Sub13: Super1 { // 祖先一定會存在
    init(_: Int) {}
}
//------------------------
class Super2 {
    init() {
        print("Super2: init()")
    }
    init(_: Int) {
        print("Super2: init(Int)")
    }
    init(_: Double) {
        print("Super2: init(Double)")
    }
}
class Sub21: Super2 {
    
}
// 一定要叫爸爸吃飯
class Sub22: Super2 {
    override init() {
        print("Sub22: init()")
        super.init() // 因為有3個所以要自己選
        // Swift 不一定要在第一行，Java要
    }
    override init(_: Int) { // 不限定Call (_:Int)
        super.init()
    }
    // override是當呼叫時呼叫self的而不是super的
    init(_: String) {
        super.init()
    }
}
//----------------------
class Super3 {
    init() {
        print("Super3: init()")
    }
}
class Sub31: Super3 {
    override init() {
        print("Sub31: init()")
    }
    convenience init(_: Int) { // 因呼叫self.init()，所以要convenience
        print("Sub31: init(Int)")
        self.init()
    } // convenience是不呼super.init的意思
    // 1.super.init
    // 2.self.init    二擇一
}
class TWId {
    var id: String
    convenience init() {
        self.init(false)
    }
    convenience init(_ gender: Bool) {
        self.init(gender, 1)
    }
    convenience init(_ area: Int) {
        self.init(true, area)
    }
    init(_ gender: Bool, _ area: Int) {
        print("main logic")
        self.id = "A123456789"
    }
    init?(_ id: String) {
        let a = Int(arc4random_uniform(2))
        if a == 0 {
            return nil
        } else {
            self.id = id
        }
    }
}
//--------required-------------
class Super4 {
    init(){
        print("Super4: init()")
    }
    required init(x: Int) {
        print("Super4: init(Int)")
    }
}
class Sub41: Super4 {
    init(x: Double) {
        super.init()
    }
    required init(x: Int) {
        super.init()
    }
}
class Sub42: Super4 {
    
}
class Sub421: Sub42 {
//    override init(x: Double) {
//        super.init(x: 1.0)
//    }
//    required init(x: Int) {
//        super.init(x: 1)
//    }
}
//-------------------------------

