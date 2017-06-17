//
//  MyClass01.swift
//  hyuntai0616
//
//  Created by Hyuntai on 2017/6/16.
//  Copyright © 2017年 hyphen. All rights reserved.
//

import Foundation

class MyClass11 {
    var x: Int
    init(x: Int) {
        self.x = x
    }
    // subscript介於Property和Method間
    subscript(y: Int) -> String {
        return "\(x) * \(y) = \(x * y)"
    }
    subscript(y: Int, z: Int) -> Int {
        return 123
    }
    subscript(y: Double) -> Double {
        get {
            print("get")
            return floor(y)
        }
        set {
            print("set")
            self.x = Int(ceil(newValue))
        }
    }
}
//---------------------------
class Super11 {
    private var x = 10
    var y = 2
    var z = 2
    var a: Int {
        get {
            return 3
        }
        set {
            
        }
    }
    func f1() {
        print("Super11: f1()")
    }
    func f2(x: Int) -> Double {
        print("Super11: f2(x: Int)")
        return 1.0
    }
}
class Sub111: Super11 {
    var x = 3
    override var y: Int {
        get {
            return 3
        }
        set {
            
        }
    }
    override var z: Int {
        willSet {
            
        }
        didSet {
            
        }
    }
    override var a: Int {
        get {
            return 3
        }
        set {
            
        }
    }
    override func f1() {
        super.f1()
        print("Sub111: f1()")
    }
    func f2(y: Int) {
        print("Sub111: f2(y: Int)")
        
    }
    override func f2(x: Int) -> Double {
        return 1.0
    }
}
//-------------------------------
final class Super211 { // 不可當Super Class
                       // API常用到
}
//class Sub211: Super211 {
//    
//}
//------------多型-----------------------
class Super31 {
    func f1() {
        print("Super3: f1()")
    }
}
class Sub311: Super31 {
    override func f1() {
        print("Sub311: f1()")
    }
    func f2() {
        print("Sub311: f2()")
    }
    func f3() {
        print("Sub311: f3()")
    }
}
class Sub312: Super31 {
    override func f1() {
        print("Sub312: f1()")
    }
    func f2() {
        print("Sub312: f2()")
    }
    func f3() {
        print("Sub312: f3()")
    }
}
// 向下 as!，向上 as


