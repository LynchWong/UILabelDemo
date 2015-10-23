//
//  ViewController.swift
//  UILabelDemo
//
//  Created by Lynch Wong on 10/23/15.
//  Copyright © 2015 Lynch Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.text = "Do any additional setup after loading the view, typically from a nib."
        
        
        let anotherLabel = UILabel(frame: CGRect(x: 0.0, y: 20.0, width: 192, height: 21))
        anotherLabel.text = "Do any additional setup after loading the view, typically from a nib."
        anotherLabel.numberOfLines = 0
        anotherLabel.textAlignment = NSTextAlignment.Center
        view.addSubview(anotherLabel)
        
        let attributesDic = [NSFontAttributeName: anotherLabel.font]
        let labelSize = (anotherLabel.text! as NSString).boundingRectWithSize(CGSize(width: 192, height: CGFloat.max),
            options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: attributesDic, context: nil).size
        anotherLabel.frame = CGRect(x: 0.0, y: 20.0, width: labelSize.width, height: labelSize.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

