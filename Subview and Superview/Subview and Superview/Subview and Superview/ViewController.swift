import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        showingViewsInTheExpectedOrder()
    }

    func showingViewsInTheExpectedOrder() {
        // v1 will be the view that overlap everything
        let v1 = UIView(frame: CGRect(x: 75, y: 150, width: 100, height: 100))
        v1.backgroundColor = .orange

        // v2 will be the first view to be drawn, so will be drawn first
        let v2 = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        v2.backgroundColor = .red

        // v3 will be subview of v2, so it will overlap v2
        let v3 = UIView(frame: CGRect(x: 25, y: 25, width: 100, height: 100))
        v3.backgroundColor = .purple

        // First to be drawn
        view.addSubview(v2)
        // Add subview
        v2.addSubview(v3)
        // Sibiling of v2, drawn last
        view.addSubview(v1)
    }
}

