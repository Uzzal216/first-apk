//
//  ViewController.swift
//  firest apk
//
//  Created by U.M. Hamidul islam on 1/13/20.
//  Copyright © 2020 U.M. Hamidul islam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView1: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func callBtnPressed(_ sender: Any) {
        
        let session = URLSession.shared
        let url = URL(string: "https://api.darksky.net/forecast/27b960d7886ff729d63ead9b912c75c8/37.8267,-122.4233")!
        
        let task = session.dataTask(with: url) { data, response, error in
        
        if let data = data {
            print(data)
            
            self.textView1.text = String(data: data, encoding: .utf8)
        }
            
            
        }
        task.resume()
    }
    
}

