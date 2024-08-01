# ActivityIndicator

`ActivityIndicator` is a Swift utility class for displaying a customizable activity indicator in your iOS application. It simplifies the process of adding and managing a loading indicator, ensuring that only one instance is shown at a time.

## Features

- **Singleton Pattern**: Ensures a single shared instance for consistent usage across the app.
- **Customizable**: Allows customization of the activity indicator's style, color, and background color.
- **Easy to Use**: Simple methods to show and hide the activity indicator.

## Installation

### Manual Installation

1. Download the `ActivityIndicator.swift` file.
2. Add the file to your Xcode project.

## Usage

### Import UIKit

Ensure that you import the `UIKit` framework in your project:

```swift
import UIKit

Using the Shared Instance
Use the shared instance of ActivityIndicator to display and hide the activity indicator.

Show the Activity Indicator
You can show the activity indicator with default or custom styles, colors, and background colors
// Show with default settings
ActivityIndicator.shared.show()

// Show with custom settings
ActivityIndicator.shared.show(style: .large, color: .red, backgroundColor: UIColor(white: 0, alpha: 0.7))

style: The style of the activity indicator (.large or .medium).
color: The color of the activity indicator.
backgroundColor: The background color of the view containing the activity indicator (default is semi-transparent black).

Hide the Activity Indicator
Call the hide() method to remove the activity indicator from the view.

ActivityIndicator.shared.hide()
