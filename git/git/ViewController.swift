//
//  ViewController.swift
//  git
//
//  Created by 卢卢欢 on 2018/3/22.
//  Copyright © 2018年 卢卢欢. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      let a =  self.bubble_Sort(a: [3,5,2,1,6,4])
        
        print(a)
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    func bubble_Sort(a: [Int])->Array<Int>{
        var a = a
        for i in 0 ... a.count-2 {
            for k in 0 ... (a.count - 2 - i) {
                var b = a[k]
                if a[k] > a[k+1]{
                    b = a[k+1]
                    a[k+1] = a[k]
                    a[k] = b
                }
            }
        }
        return a
    }


}

