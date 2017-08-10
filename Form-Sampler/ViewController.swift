//
//  ViewController.swift
//  Form-Sampler
//
//  Created by ShinokiRyosei on 2017/08/10.
//  Copyright © 2017年 ShinokiRyosei. All rights reserved.
//

import UIKit
import Eureka

class ViewController: FormViewController {

    var array: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        self.form +++ Section()
            <<< PushRow<String>() { row in
                row.tag = "Row"
                row.title = "Hoge"
                row.options = self.array
        }.cellUpdate({ (cell, row) in

            row.options = self.array
        })

        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) { 

            self.array = ["しのき", "いのっち", "ノコノコ", "つっちー"]

            let row: PushRow<String>? = self.form.rowBy(tag: "Row")
            row?.reload()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

