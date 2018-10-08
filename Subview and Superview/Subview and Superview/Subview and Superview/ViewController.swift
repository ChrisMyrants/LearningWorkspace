import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        showingViewsInTheExpectedOrder()
//        removingAViewWillRemoveAllItsSubviews()
//        viewTransparencyWillBeInheritedByAllItsSubviews()
//        clipping()
        subclassingUIViewForOverrideItsMethods()
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

    func removingAViewWillRemoveAllItsSubviews() {
        // Here we create view hierarchy
        let v1 = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        v1.backgroundColor = .orange

        let v2 = UIView(frame: CGRect(x: 25, y: 25, width: 100, height: 100))
        v2.backgroundColor = .red

        let v3 = UIView(frame: CGRect(x: 25, y: 25, width: 100, height: 100))
        v3.backgroundColor = .green

        view.addSubview(v1)
        v1.addSubview(v2)
        v2.addSubview(v3)

        // Removing just v1 from its superview, will be enought to remove it and all its subviews (nothing will be displayed)
        v1.removeFromSuperview()
    }

    func viewTransparencyWillBeInheritedByAllItsSubviews() {
        let v1 = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        v1.backgroundColor = .orange

        let v2 = UIView(frame: CGRect(x: 25, y: 25, width: 100, height: 100))
        v2.backgroundColor = .red

        let v3 = UIView(frame: CGRect(x: 25, y: 25, width: 100, height: 100))
        v3.backgroundColor = .green

        view.addSubview(v1)
        v1.addSubview(v2)
        v2.addSubview(v3)

        v1.alpha = 0.5
    }

    func clipping() {
        let v1 = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        v1.backgroundColor = .orange

        let v2 = UIView(frame: CGRect(x: 25, y: 25, width: 100, height: 100))
        v2.backgroundColor = .red

        let v3 = UIView(frame: CGRect(x: 25, y: 25, width: 100, height: 100))
        v3.backgroundColor = .green

        view.addSubview(v1)
        v1.addSubview(v2)
        v2.addSubview(v3)

        v1.clipsToBounds = true
    }

    func subclassingUIViewForOverrideItsMethods() {
        // Here we set a custom view, with a backgroundColor .purple. This custom view, as you can see in `HulkView.swift` is a subclass of UIView with an override of `didAddSubview(_:)`, that will change the backgroundColor in green.
        let hulkView = HulkView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        hulkView.backgroundColor = .purple

        let v2 = UIView(frame: CGRect(x: 25, y: 25, width: 100, height: 100))
        v2.backgroundColor = .red

        view.addSubview(hulkView)
        // That's the moment that will change the color of the hulk view to green.
        hulkView.addSubview(v2)
    }
}

