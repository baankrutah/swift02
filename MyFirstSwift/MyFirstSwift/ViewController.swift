//
//  ViewController.swift
//  MyFirstSwift
//
//  Created by Phatthana Tongon on 1/24/2559 BE.
//  Copyright © 2559 Phatthana Tongon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        [UIImage imageName:@"Name"]
        
        imageView.image = UIImage(named: "doll")
    }

    @IBAction func touchButton(sender: AnyObject) {
        let name = textField.text
        nameLabel.text = name
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

