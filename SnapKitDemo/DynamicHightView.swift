//
//  DynamicHightView.swift
//  SnapKitDemo
//
//  Created by zgpeace on 2019/6/27.
//  Copyright © 2019 Appcoda. All rights reserved.
//

import UIKit
import SnapKit

class DynamicHightView: UIView {
    
    var viewContainer: UIView!
    var label: UILabel!
    

    init() {
        super.init(frame: CGRect.zero)
        setupViewContainer()
        setupCommentField()
        self.backgroundColor = UIColor.green
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: customer UI
    func setupViewContainer() {
        viewContainer = UIView()
        viewContainer.backgroundColor = UIColor.blue
        self.addSubview(viewContainer)
    }
    
    func setupCommentField() {
        label = UILabel()
        viewContainer.addSubview(label)
        label.backgroundColor = UIColor.white
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.text = "hello world, today is a new day. Have a nice day. hello world, today is a new day. Have a nice day. hello world, today is a new day. Have a nice day. hello world, today is a new day. Have a nice day. hello world, today is a new day. Have a nice day. hello world, today is a new day. Have a nice day."
        self.addSubview(label)
        label.snp.makeConstraints { (make) in
            let superView = viewContainer!
            make.left.equalTo(superView).offset(10)
            make.right.equalTo(superView).offset(-10)
            make.centerY.equalTo(superView)
        }
        
        viewContainer.snp.makeConstraints { (make) in
            make.centerY.equalTo(self)
            make.centerX.equalTo(self)
            make.left.equalTo(self).offset(10)
            make.right.equalTo(self).offset(-10)
            make.height.equalTo(label).offset(100)
        }

    }
    
}
