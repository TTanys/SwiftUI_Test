//
//  FindViewController.swift
//  SwiftUI_Test
//
//  Created by ZJJ on 16/10/8.
//  Copyright © 2016年 ZJJ. All rights reserved.
//

import UIKit

class FindViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "发现"
        
        
        
        
        var a = 20 ,b = 5
        SumAndMinus(num1: a, num2: b, sum: &a, minus: &b)
        
        SumAndMinus(num1: a, num2: b, sum: &a, minus: &b)
        
//        print("\(SumAndMinus(num1: a, num2: b, sum: &a, minus: &b))")
        
    }

    func SumAndMinus(num1:Int,num2:Int, sum:inout Int, minus:inout Int){
        
        sum = num1 + num2
        
        minus = num1 - num2
        
        print("\(sum)   \(minus)")
        
    }

}
