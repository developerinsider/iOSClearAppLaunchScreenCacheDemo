# Clean iOS app launch screen cache

You might have noticed when you tried to change something in the launch screen on the iOS application, you still see the old launch screen. Because the system caches launch images and it's not cleared even after deleting the application.

For cleaning the launch screen, all you have to do to completely clear your app’s launch screen cache is run this code inside your app:

```swift
import UIKit

public extension UIApplication {
    func clearLaunchScreenCache() {
        #if DEBUG
        do {
            let launchScreenPath = "\(NSHomeDirectory())/Library/SplashBoard"
            try FileManager.default.removeItem(atPath: launchScreenPath)
        } catch {
            print("Failed to delete launch screen cache - \(error)")
        }
        #endif
    }
}
```

To use this, add the following lines in the app's `didFinishLaunchingWithOptions` delegate method:


```swift
UIApplication.shared.clearLaunchScreenCache()
```
