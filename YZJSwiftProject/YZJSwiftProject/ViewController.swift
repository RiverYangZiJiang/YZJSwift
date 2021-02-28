//
//  ViewController.swift
//  YZJSwiftProject
//
//  Created by hd on 2021/2/28.
//

import UIKit


class ViewController: UIViewController, TwoViewControllerProtocol{
    override func loadView() {
        super.loadView()
        print("\(#function)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(#function)")
        self.view.backgroundColor = .red
    }
    
    override func viewWillLayoutSubviews() {
        print("\(#function)")
    }
    
    override func viewDidLayoutSubviews() {
        print("\(#function)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("\(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("\(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("\(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("\(#function)")
    }
    
    deinit {
        print("\(#function)")
    }
    
    override func didReceiveMemoryWarning() {
        print("\(#function)")
    }


    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        let vc = TwoViewController()
//        vc.data = "data"  // 直接传值
        let vc = TwoViewController(data: "data")  // 使用构造方法传值
        vc.delegate = self
        vc.closure = {(data: String) in
            print(data)
        }
        self.present(vc, animated: true) {
            print("\(#function)")
        }
    }
    
    func sentData(data: String) {
        print("\(#function)" + " : " + data)
    }
}

