//
// flex-ui
// Copyright © 2024 Space Code. All rights reserved.
//

import UIKit

/// An extension to `FlexUI` that adds helper methods for configuring `UIImageView` properties.
/// These methods allow for fluent configuration of properties such as content mode, clips to bounds,
/// image, and accessibility adjustments.
public extension FlexUI where Component: UIImageView {
    /// Sets the content mode of the image view.
    ///
    /// - Parameter contentMode: The content mode that determines how the image is scaled or positioned within the image view.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func contentMode(_ contentMode: UIView.ContentMode) -> Self {
        component.contentMode = contentMode
        return self
    }

    /// Toggles whether the image view clips its content to its bounds.
    ///
    /// - Parameter clipsToBounds: A boolean indicating whether the content of the image view should be clipped to the bounds.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func clipsToBounds(_ clipsToBounds: Bool) -> Self {
        component.clipsToBounds = clipsToBounds
        return self
    }

    /// Sets the image to be displayed in the image view.
    ///
    /// - Parameter image: The image to display in the image view.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func image(_ image: UIImage?) -> Self {
        component.image = image
        return self
    }

    /// Toggles whether the image view adjusts its image size based on the current accessibility content size category.
    ///
    /// - Parameter value: A boolean indicating whether to adjust the image size for accessibility.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func adjustsImageSizeForAccessibilityContentSizeCategory(_ value: Bool) -> Self {
        component.adjustsImageSizeForAccessibilityContentSizeCategory = value
        return self
    }
}
