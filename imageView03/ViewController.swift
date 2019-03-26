//
//  ViewController.swift
//  imageView03
//
//  Created by D7703_11 on 2019. 3. 26..
//  Copyright © 2019년 dit.ac.kr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var myLable: UILabel!
    
    var count = 0
    var dir = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myLable.text="0"
        myImageView.image = UIImage(named:"frame1")
    }


    @IBAction func changeImage(_ sender: Any) {
        
        if count == 5{
            dir = false
        }else if count == 0{
            dir = true
        }
        
        if dir == true{
            count += 1
        }else if dir == false{
            count -= 1
        }
        
        myImageView.image = UIImage(named: "frame\(count)")
        myLable.text = "frame\(count).png"
    }
}

