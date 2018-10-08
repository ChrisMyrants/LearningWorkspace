#  Subview and Superview

Talking about view hierarchy, every view has 2 particular properties:
  - `superview`: it's the view the owns the current view
  - `subviews`: it's the array of views owned by the current view

The view position in the view hierarchy determines when it will be drawn. This means that:
  1. Of 2 sibilings, the first one in the view hierarchy will be the first do be drawn.
  2. A superview is always drawn before it's subview.
  3. The subviews of a view will be drawn before the next sibilings of its superview
  
To illustrate these scenarios, you can check in `ViewController.swift` the example that I prepared. Check the `showingViewsInTheExpectedOrder()` function.
