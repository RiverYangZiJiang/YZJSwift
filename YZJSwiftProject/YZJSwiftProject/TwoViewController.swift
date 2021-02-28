//
//  TwoViewController.swift
//  YZJSwiftProject
//
//  Created by hd on 2021/2/28.
//

import UIKit
protocol TwoViewControllerProtocol {
    func sentData(data: String)  // 使用协议传值
}
class TwoViewController: UIViewController {
    var data: String?
    var delegate: TwoViewControllerProtocol?
    var closure: ((String)->Void)?
    
    init(data: String) {
        self.data = data
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        
        print(data!)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        delegate?.sentData(data: "第2个界面传递的值")
        self.closure!("第2个界面闭包传递的值")
        self.dismiss(animated: true) {
            print("\(#function)")
        }
    }
    
    

}
