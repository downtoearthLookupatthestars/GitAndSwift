//
//  ViewController.swift
//  GitAndSwift
//
//  Created by Mr.Luo on 2019/3/8.
//  Copyright © 2019 com.Sten. All rights reserved.
//

import UIKit

let KScreenWidth = UIScreen.main.bounds.size.width
let KScreenHeith = UIScreen.main.bounds.size.height

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let lable = UILabel(frame: CGRect(x: 50, y: 50, width: 200, height: 50))
        lable.text = "你好"
        lable.textColor = .blue
        lable.textAlignment = .center
        lable.backgroundColor = UIColor.red
        lable.font = UIFont.systemFont(ofSize: 14)
        self.view.addSubview(lable)
        
        let lab = UILabel(frame: CGRect(x: 50, y: 100, width: 100, height: 50))
        lab.text = "按钮"
        lab.textColor = UIColor.red
        lab.textAlignment = .center
        lab.backgroundColor = .red
        lab.font = UIFont.systemFont(ofSize: 14)
//        self.view.addSubview(lab)
        
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 50, y: 100, width: 100, height: 50);
        button.backgroundColor = UIColor.red;
        button.setTitle("按钮", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 5
        button.tag = 100
        button.addTarget(self, action:#selector(buttonAction1(sender:)) , for: .touchUpInside)
        self.view.addSubview(button)
        
        let imageV = UIImageView(image: UIImage.init(named: "123"))
        imageV.frame = CGRect(x: 0, y: KScreenHeith-KScreenWidth, width: KScreenWidth, height: KScreenWidth)
        self.view.addSubview(imageV)
        
        let textV = UITextView(frame: CGRect(x: 150, y: 100, width: 100, height: 50))
        textV.textColor = UIColor.green
        textV.backgroundColor = UIColor.yellow
        self.view.addSubview(textV)
        
        let textF = UITextField(frame: CGRect(x: 250, y: 50, width: 100, height: 50))
        textF.textColor = UIColor.black
        textF.placeholder = "请输入"
        textF.borderStyle = .line
        self.view.addSubview(textF)
        
    }
    @objc func buttonAction1(sender:UIButton){
        print(sender.tag)
        let alert = UIAlertController(title: "提示", message: "是否确定", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "确定", style: .destructive, handler: { (UIAlertAction) in
            print("确定了")
        }))
        alert.addAction(UIAlertAction(title: "取消", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}



