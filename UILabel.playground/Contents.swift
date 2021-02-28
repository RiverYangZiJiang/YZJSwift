//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello yzj!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
    }
    
    override func viewDidLoad() {
        let label = UILabel(frame: CGRect(x: 20, y: 20, width: 200, height: 30))
        label.text = "我是一个普通的便签控件"
        label.textColor = .red
        label.font = .boldSystemFont(ofSize: 14)
        label.shadowColor = .green  // 阴影颜色
        label.shadowOffset = CGSize(width: 2, height: 2)  // 引用的位置偏移
        label.textAlignment = NSTextAlignment.center
        addAttributes(label: label)
        self.view.addSubview(label)
    }
    
    // 个性化文本，可以设置字体Font、段落风格ParagraphStyle、文本颜色ForegroundColor、背景色BackgroundColor、下划线UnderlineStyle、阴影Shadow、超链接Link、下划线颜色UnderlineColor、
    func addAttributes(label: UILabel) {
        let attriText = NSMutableAttributedString(string: "我是个性化文本")
        attriText.addAttributes([NSAttributedString.Key.font:UIFont.boldSystemFont(ofSize: 20), NSAttributedString.Key.foregroundColor: UIColor.red], range: NSRange(location: 0, length: 2))
        attriText.addAttributes([NSAttributedString.Key.font:UIFont.boldSystemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor.blue], range: NSRange(location: 3, length: 4))
        label.attributedText = attriText
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
