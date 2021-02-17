import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let sample = "sample"
        print(sample)
        
        if true {
            print("Will this line of code ever be reached?")
            someMethod()
        }
        
        let label = UILabel(frame: CGRect(x: 200, y: 400, width: 200, height: 44))
        view.addSubview(label)
        label.text = "Hello!"
        
        
    }
    
    func someMethod() {

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

