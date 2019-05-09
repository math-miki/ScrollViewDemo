//
//  SwipeDemoViewController.swift
//  segueDemo
//
//  Created by Miki Takahashi on 2019/05/10.
//  Copyright © 2019 MikiTakahashi. All rights reserved.
//

import UIKit


class SwipeDemoViewController: UIViewController {
    
    @IBOutlet var scrollView: UIScrollView!
    
    let days: [String] = ["月曜","火曜","水曜","木曜","金曜","土曜","日曜"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height * 7)
        scrollView.isPagingEnabled = true
        
        let size = scrollView.frame.size
        
        for i in 0..<7 {
             let contentView: UIView = UIView(frame: CGRect(x: 0, y: size.height*CGFloat(i), width: size.width, height: size.height))
            
            contentView.backgroundColor = UIColor(red: 0.1*CGFloat(i), green: 0.7, blue: 1.0-0.1*CGFloat(i), alpha: 1.0)
            
            let label = UILabel(frame: CGRect(x: 0, y: 100, width: size.width, height: 100))
            label.textAlignment = .center
            label.font = UIFont.systemFont(ofSize: 100, weight: .light)
            label.text = days[i]
            
            contentView.addSubview(label)
            self.scrollView.addSubview(contentView)
        }
    }
    
}
