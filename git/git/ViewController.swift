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
        
        self.qickerSort(left: 0, right: 5);
     
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
    
    func Quicksort(a:[Int]){
 
        
    }

    func qickerSort(left: Int, right: Int) {
      var numbersArray = [1,4,6,5,8,2]
        
        var i,j,pivot: Int
        if left > right {
            
            return
        }
        pivot = numbersArray[left]
        i = left
        j = right
        while i != j {
            while numbersArray[j] >= pivot && i < j {
                j -= 1
            }
            while numbersArray[i] <= pivot && i < j {
                i += 1
            }
            if i < j {
                numbersArray.swapAt(i, j)
            }
        }
        
        numbersArray[left] = numbersArray[i];
        numbersArray[i] = pivot
      
        qickerSort(left: left, right: i-1)
        qickerSort(left: i+1, right: right)
        
        

    }

}

