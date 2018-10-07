import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Referring main window, approach 1
        _ = self.view.window
        // Referring main window, approach 2
        _ = UIApplication.shared.keyWindow
        // Referring main window, approach 3
        _ = UIApplication.shared.delegate?.window
    }
}

