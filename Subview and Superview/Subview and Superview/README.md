#  Subview and Superview

Talking about view hierarchy, every view has 2 particular properties:
  - `superview`: it's the view the owns the current view
  - `subviews`: it's the array of views owned by the current view

The view position in the view hierarchy determines when it will be drawn. This means that:
  1. Of 2 sibilings, the first one in the view hierarchy will be the first do be drawn.
  2. A superview is always drawn before it's subview.
  3. The subviews of a view will be drawn before the next sibilings of its superview
  
To illustrate these scenarios, you can check in `ViewController.swift` the example that I prepared. Check the `showingViewsInTheExpectedOrder()` function.

There are more properties about the relationship about superview and subviews:
  1. If a view is removed from or moved within its superview, it's subviews will go with it. Take a look at `removingAViewWillRemoveAllItsSubviews()` function.
  2. A view transparancy will be inerhited by all its subviews. Take a look at `viewTransparencyWillBeInheritedByAllItsSubviews()`
  3. A view can limit the drawing area of its subview inside its own rectangle enabling `clipsToBounds` property. Take a look at `clipping()` function.
  4. Subclass UIView to have access to all its methods and override theme, as you can see from the combination of the `subclassingUIViewForOverrideItsMethods()` function with the `HulkView.swift` file.
