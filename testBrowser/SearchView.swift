//
//  SearchView.swift
//  testBrowser
//
//  Created by 下馬場光祐 on 2016/03/06.
//  Copyright © 2016年 Kosuke Shimobaba. All rights reserved.
//

import UIKit

class SearchView: UIView ,UITextFieldDelegate{
    
    init(){
        super.init(frame:CGRect(x: 0, y: 0, width:origin.width, height: 100))
        configure()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var tField :UITextField!
    var searchButton :UIButton!
    
    
    func configure(){
        //textField
        tField = UITextField(frame: CGRect(x: origin.width/6,y: 60,width: origin.width/2 ,height: 30))
        tField.placeholder = "Please fill in the blank."
        tField.layer.cornerRadius = 10
        tField.layer.borderWidth = 0.2
        tField.layer.borderColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 0.8).CGColor
        tField.font = UIFont(name: "Body", size:19)
        self.addSubview(tField)
        
        
        searchButton = UIButton(frame: CGRect(x: origin.width*7/10, y: 60, width: origin.width/8, height: 30))
        searchButton.addTarget(self, action: "searchWeb", forControlEvents: UIControlEvents.TouchUpInside)
        searchButton.setTitle("Search", forState: UIControlState.Normal)
        searchButton.sizeToFit()
//        searchButton.titleLabel?.adjustsFontSizeToFitWidth
        searchButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        searchButton.setTitleColor(UIColor.grayColor(), forState: UIControlState.Highlighted)
        searchButton.backgroundColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 0.5)
        searchButton.layer.cornerRadius = 10
        searchButton.layer.borderWidth = 0.3
        searchButton.layer.borderColor = UIColor(red: 0.2, green: 0.2, blue:0.2, alpha: 0.8).CGColor
        self.addSubview(searchButton)
    }
    
    func searchWeb(){
        
    }
    
    
    
    
    //textField
//    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
//        return true
//    }
    
    func textFieldShouldClear(textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        return true
    }
    

}
