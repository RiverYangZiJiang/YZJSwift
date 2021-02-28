//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        print("\(#function) in \(#file)")
    }
    
    override func viewDidLoad() {
        print("\(#function) in \(#file)")
    }
    
    override func viewWillLayoutSubviews() {
        print("\(#function) in \(#file)")
    }
    
    override func viewDidLayoutSubviews() {
        print("\(#function) in \(#file)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("\(#function) in \(#file)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("\(#function) in \(#file)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("\(#function) in \(#file)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("\(#function) in \(#file)")
    }
    
    deinit {
        print("\(#function) in \(#file)")
    }
    
    override func didReceiveMemoryWarning() {
        print("\(#function) in \(#file)")
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
