//
//  ViewController.swift
//  MyFirstApp
//
//  Created by preccrep on 2021/7/17.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var Img1: UIImageView = {
        let imgv = UIImageView(image: UIImage(named: "1"))
        imgv.contentMode = UIView.ContentMode.scaleAspectFit
        return imgv
    }()
    
    private lazy var Img2: UIImageView = {
        let imgv = UIImageView(image: UIImage(named: "2"))
        imgv.contentMode = UIView.ContentMode.scaleAspectFit
        return imgv
    }()
    
    private lazy var Img3: UIImageView = {
        let imgv = UIImageView(image: UIImage(named: "3"))
        imgv.contentMode = UIView.ContentMode.scaleAspectFit
        return imgv
    }()
    
    private lazy var Img4: UIImageView = {
        let imgv = UIImageView(image: UIImage(named: "4"))
        imgv.contentMode = UIView.ContentMode.scaleAspectFit
        return imgv
    }()
    
    private lazy var Img5: UIImageView = {
        let imgv = UIImageView(image: UIImage(named: "5"))
        imgv.contentMode = UIView.ContentMode.scaleAspectFit
        return imgv
    }()
    
    private lazy var Img6: UIImageView = {
        let imgv = UIImageView(image: UIImage(named: "6"))
        imgv.contentMode = UIView.ContentMode.scaleAspectFit
        return imgv
    }()
    
    private lazy var Img7: UIImageView = {
        let imgv = UIImageView(image: UIImage(named: "7"))
        imgv.contentMode = UIView.ContentMode.scaleAspectFit
        return imgv
    }()
    
    private lazy var Img8: UIImageView = {
        let imgv = UIImageView(image: UIImage(named: "8"))
        imgv.contentMode = UIView.ContentMode.scaleAspectFit
        return imgv
    }()
    
    private lazy var Img9: UIImageView = {
        let imgv = UIImageView(image: UIImage(named: "9"))
        imgv.contentMode = UIView.ContentMode.scaleAspectFit
        return imgv
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.backgroundColor = UIColor.lightGray
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 图片
        // 设置布局
        self.Img1.frame = self.view.bounds
        self.Img2.frame = self.view.bounds
        self.Img3.frame = self.view.bounds
        self.Img4.frame = self.view.bounds
        self.Img5.frame = self.view.bounds
        self.Img6.frame = self.view.bounds
        self.Img7.frame = self.view.bounds
        self.Img8.frame = self.view.bounds
        self.Img9.frame = self.view.bounds
        
        // 添加视图
        self.view.addSubview(self.Img1)
        self.view.addSubview(self.Img2)
        self.view.addSubview(self.Img3)
        self.view.addSubview(self.Img4)
        self.view.addSubview(self.Img5)
        self.view.addSubview(self.Img6)
        self.view.addSubview(self.Img7)
        self.view.addSubview(self.Img8)
        self.view.addSubview(self.Img9)
        
        // 按钮
        // 设置布局
        let buttonHeight: CGFloat = 77
        self.button.frame = CGRect(x: 0, y: self.view.frame.height - buttonHeight, width: self.view.frame.width, height: buttonHeight)
        
        // 设置按钮标题
        self.button.setTitle("😜", for: UIControl.State.normal)
        self.button.setTitle("🤪", for: UIControl.State.selected)
        
        // 设置点击事件
        self.button.addTarget(self, action: #selector(didClickButton(button:)), for: UIControl.Event.touchUpInside)
        
        // 添加按钮视图
        self.view.addSubview(self.button)
        
        update()
    }
    
    private var curFig: Int = 1
    
    private func update() {
        var arr: [Bool] =  []
        for _ in 0...8 {
            arr.append(true)
        }
        arr[8 - curFig] = false
        self.Img1.isHidden = arr[0]
        self.Img2.isHidden = arr[1]
        self.Img3.isHidden = arr[2]
        self.Img4.isHidden = arr[3]
        self.Img5.isHidden = arr[4]
        self.Img6.isHidden = arr[5]
        self.Img7.isHidden = arr[6]
        self.Img8.isHidden = arr[7]
        self.Img9.isHidden = arr[8]
        self.button.isSelected = !self.button.isSelected
    }
    
    @objc private func didClickButton(button: UIButton) {
        curFig = (curFig + 1) % 9
        update()
    }


}

