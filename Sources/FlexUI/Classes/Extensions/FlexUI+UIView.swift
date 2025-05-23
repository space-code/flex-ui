//
// flex-ui
// Copyright © 2025 Space Code. All rights reserved.
//

import UIKit

public extension FlexUI where Component: UIView {
    /// Sets the corner radius of the view.
    ///
    /// - Parameter cornerRadius: The radius of the view's corners.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func cornerRadius(_ cornerRadius: CGFloat) -> Self {
        component.layer.cornerRadius = cornerRadius
        return self
    }

    /// Enables or disables user interaction for the view.
    ///
    /// - Parameter isEnabled: A boolean indicating whether user interaction should be enabled.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func isUserInteractionEnabled(_ isEnabled: Bool) -> Self {
        component.isUserInteractionEnabled = isEnabled
        return self
    }

    /// Sets the background color of the view.
    ///
    /// - Parameter color: The color to apply to the view's background.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func backgroundColor(_ color: UIColor) -> Self {
        component.backgroundColor = color
        return self
    }

    /// Sets the border width of the view.
    ///
    /// - Parameter width: The width to apply to the view's border.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func borderWidth(_ width: CGFloat) -> Self {
        component.layer.borderWidth = width
        return self
    }

    /// Sets the border color of the view.
    ///
    /// - Parameter color: The color to apply to the view's border.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func borderColor(_ color: UIColor) -> Self {
        component.layer.borderColor = color.cgColor
        return self
    }

    /// Enables or disables clipping to the bounds of the view.
    ///
    /// - Parameter isEnabled: A boolean indicating whether the view should clip to its bounds.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func masksToBounds(_ isEnabled: Bool) -> Self {
        component.layer.masksToBounds = isEnabled
        return self
    }

    /// Sets the masked corners for the view.
    ///
    /// - Parameter maskedCorners: A set of corners to mask (e.g., `.layerMinXMinYCorner`).
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func maskedCorners(_ maskedCorners: CACornerMask) -> Self {
        component.layer.maskedCorners = maskedCorners
        return self
    }

    /// Sets a custom mask layer for the view.
    ///
    /// - Parameter mask: A `CALayer` to be applied as the mask for the view.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func mask(_ mask: CALayer?) -> Self {
        component.layer.mask = mask
        return self
    }

    /// Applies a 3D transformation to the view's layer.
    ///
    /// - Parameter transform: The transformation to apply to the view's layer.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func transform(_ transform: CATransform3D) -> Self {
        component.layer.transform = transform
        return self
    }

    /// Applies a transformation to the component.
    /// - Parameter transform: A `CGAffineTransform` that modifies the component's position, rotation, scale, or skew.
    /// - Returns: The modified instance of `Self` to allow method chaining.
    /// - Note: The `@discardableResult` attribute allows ignoring the returned value.
    ///         The `@MainActor` attribute ensures the method runs on the main thread.
    @discardableResult
    @MainActor
    func transform(_ transform: CGAffineTransform) -> Self {
        component.transform = transform
        return self
    }

    /// Sets the visibility of the component.
    /// - Parameter isHidden: A Boolean value that determines whether the component is hidden.
    /// - Returns: The modified instance of `Self` to allow method chaining.
    /// - Note: The `@discardableResult` attribute allows ignoring the returned value.
    ///         The `@MainActor` attribute ensures the method runs on the main thread.
    @discardableResult
    @MainActor
    func isHidden(_ isHidden: Bool) -> Self {
        component.isHidden = isHidden
        return self
    }

    /// Sets the transparency of the component.
    /// - Parameter alpha: A `CGFloat` value between 0.0 (completely transparent) and 1.0 (completely opaque).
    /// - Returns: The modified instance of `Self` to allow method chaining.
    /// - Note: The `@discardableResult` attribute allows ignoring the returned value.
    ///         The `@MainActor` attribute ensures the method runs on the main thread.
    @discardableResult
    @MainActor
    func alpha(_ alpha: CGFloat) -> Self {
        component.alpha = alpha
        return self
    }

    /// Sets the content hugging priority for the specified axis.
    /// Content hugging determines how likely the view is to shrink below its intrinsic content size.
    /// A higher priority means the view resists growing beyond its content size.
    ///
    /// - Parameters:
    ///   - priority: The priority value to set.
    ///   - axis: The axis (`.horizontal` or `.vertical`) on which to apply the priority.
    /// - Returns: The current instance, allowing method chaining.
    @discardableResult
    @MainActor
    func setContentHuggingPriority(
        _ priority: UILayoutPriority,
        for axis: NSLayoutConstraint.Axis
    ) -> Self {
        component.setContentHuggingPriority(priority, for: axis)
        return self
    }

    /// Sets the content compression resistance priority for the specified axis.
    /// Compression resistance determines how likely the view is to shrink below its intrinsic content size under compression.
    /// A higher priority means the view resists being made smaller than its content size.
    ///
    /// - Parameters:
    ///   - priority: The priority value to set.
    ///   - axis: The axis (`.horizontal` or `.vertical`) on which to apply the priority.
    /// - Returns: The current instance, allowing method chaining.
    @discardableResult
    @MainActor
    func setContentCompressionResistancePriority(
        _ priority: UILayoutPriority,
        for axis: NSLayoutConstraint.Axis
    ) -> Self {
        component.setContentCompressionResistancePriority(priority, for: axis)
        return self
    }
}
