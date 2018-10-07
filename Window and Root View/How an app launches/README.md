#  How an app launches

In this project, we are going to show how an app launches when it uses a storyboard.

The app launches is a call to the `UIApplicationMain` funcion. This call trigger the following steps:
  1. `UIApplication` creation and retantion.
  2. App delgate creation and retantion in `UIApplication` intance delegate. `UIApplicationMain` knows which class is the app delegate thanks to the `@UIApplicationMain` attribute on it.
  3. Storyboard check of existence. `UIApplicationMain` can do this thanks to the Info.plist attribute `Main storyboard file base name`. A new project, has a Storyboard, called Main, and is properly set in the Info.plist.
  4. If `UIApplicaionMain` finds a storyboard, it will create a `UIWindow` instance and retain it in the window property of the app delgate. The window will be resized so the its bounds will match the screen frame. Next, `UIApplicationMain` will take the first view controller of the Storyboard, instantiate it and assign as `rootViewController` of the window.
  5. Call app delegate's `application(_:didFinishLaunchingWithOptions)`
  6. If the app uses a Storyboard, `UIApplicationMain` calls window instance method `makeKeyAndVisible` to show it.
  
The window will be the root of our view hierarchy. This root will have just one child, that is the root view of the view controller retained in its `rootViewController` property.

This app is not modified, so that you can check all the elements described in this explanation and play with them.

## Referring Window
We can refere to our window in the application in 3 different ways:
  1. Every window has a reference to the window thanks to its `window` property. This is true just when the view is in the interface. If it is not, the `window` property will be nil.
  2. We have the shared application has a reference to the window, thanks to its `keyWindow` property.
  3. Also the the app delegate has a reference to the window, thanks to a `window` property.
You can find examples of all 3 the approaches in the `ViewController.swift` file.

