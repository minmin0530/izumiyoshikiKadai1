//
//  Calc.swift
//  izumiyoshikiKadai1
//
//  Created by 泉芳樹 on 2021/11/22.
//

import Foundation

class Calc {
    private var result: Int = 0
    func initializeResult() {
        result = 0
    }
    func add(number: Int) {
        result += number
    }
    func getResult() -> Int {
        return result
    }
}
