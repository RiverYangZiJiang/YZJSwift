//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func viewDidLoad() {
        super .viewDidLoad()
        let buttonOne = UIButton(type: UIButton.ButtonType.custom)
        buttonOne.frame = CGRect(x: 100, y: 40, width: 100, height: 30)
        buttonOne.backgroundColor = .purple
        buttonOne.setTitle("标题", for: UIControl.State.normal)
        buttonOne.setTitleColor(.white, for: UIControl.State.normal)
        self.view.addSubview(buttonOne)
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
