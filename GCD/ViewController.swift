//
//  ViewController.swift
//  GCD
//
//  Created by Grandre on 16/2/23.
//  Copyright © 2016年 革码者. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //    GCD
    func delay(second:Double,block:()->()){
        let Second = second * Double(NSEC_PER_SEC)  //0指等待0秒播放动画
        let dtime = dispatch_time(DISPATCH_TIME_NOW, Int64(Second))
        dispatch_after(dtime, dispatch_get_main_queue(), block)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

