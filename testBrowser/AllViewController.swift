//
//  ViewController.swift
//  testBrowser
//
//  Created by 下馬場光祐 on 2016/03/06.
//  Copyright © 2016年 Kosuke Shimobaba. All rights reserved.
//

import UIKit

class AllViewController: UIViewController {
    
    //Parameter
    
    
    
    //UI
    var sView :SearchView!
    var webView :UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configure()
        
    }
    
    func configure(){
        sView = SearchView()
        self.view.addSubview(sView)
        webView = UIWebView(frame: CGRect(x: 0, y: 0, width: origin.width, height: origin.height/9))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

