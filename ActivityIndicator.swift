import UIKit

class ActivityIndicator {
    
    // MARK: - Properties
    
    static let shared = ActivityIndicator()
    
    private var activityIndicatorView: UIActivityIndicatorView?
    private var backgroundView: UIView?
    
    // MARK: - Initialization
    
    private init() {
        // Private initializer to prevent multiple instances
    }
    
    // MARK: - Public methods
    
    /**
     Shows the activity indicator with optional customization options.
     
     - Parameters:
        - style: The style of the activity indicator. Defaults to `.large`.
        - color: The color of the activity indicator. Defaults to `.white`.
        - backgroundColor: The background color of the view that contains the activity indicator. Defaults to a semi-transparent black color.
     */
    func show(style: UIActivityIndicatorView.Style = .large, color: UIColor = .white, backgroundColor: UIColor = UIColor(white: 0, alpha: 0.5)) {
        if let keyWindow = UIApplication.shared.windows.first(where: { $0.isKeyWindow }) {
            // Create and add the background view
            let backgroundView = UIView(frame: keyWindow.bounds)
            backgroundView.backgroundColor = backgroundColor
            keyWindow.addSubview(backgroundView)
            self.backgroundView = backgroundView
            
            // Create and add the activity indicator view
            let activityIndicatorView = UIActivityIndicatorView(style: style)
            activityIndicatorView.color = color
            activityIndicatorView.center = backgroundView.center
            backgroundView.addSubview(activityIndicatorView)
            activityIndicatorView.startAnimating()
            self.activityIndicatorView = activityIndicatorView
        }
    }
    
    /**
     Hides the activity indicator and removes its containing view from the superview.
     */
    func hide() {
        // Remove the activity indicator and background views
        activityIndicatorView?.stopAnimating()
        activityIndicatorView?.removeFromSuperview()
        activityIndicatorView = nil
        backgroundView?.removeFromSuperview()
        backgroundView = nil
    }
    
}
