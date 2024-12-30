//
// flex-ui
// Copyright © 2024 Space Code. All rights reserved.
//

import UIKit

/// An extension to `FlexUI` that adds helper methods for configuring `UIStackView` properties.
/// These methods enable easy configuration of common `UIStackView` properties using a fluent interface.
extension FlexUI where Component: UIStackView {
    /// Sets the axis along which the arranged views in the stack are laid out.
    ///
    /// - Parameter axis: The axis for layout (either `.horizontal` or `.vertical`).
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func axis(_ axis: NSLayoutConstraint.Axis) -> Self {
        component.axis = axis
        return self
    }

    /// Sets the distribution method for the arranged views in the stack.
    ///
    /// - Parameter distribution: The distribution method (e.g., `.fill`, `.equalSpacing`, etc.).
    ///
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func distribution(_ distribution: UIStackView.Distribution) -> Self {
        component.distribution = distribution
        return self
    }

    /// Sets the spacing between the arranged views in the stack.
    ///
    /// - Parameter space: The spacing value (in points) between the arranged views.
    ///
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func spacing(_ space: CGFloat) -> Self {
        component.spacing = space
        return self
    }

    /// Sets the alignment of the arranged views along the stack's axis.
    ///
    /// - Parameter alignment: The alignment option (e.g., `.fill`, `.leading`, `.center`, etc.).
    ///
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func alignment(_ alignment: UIStackView.Alignment) -> Self {
        component.alignment = alignment
        return self
    }

    /// Adds an array of subviews to the stack view's arranged subviews.
    ///
    /// - Parameter subviews: The array of `UIView` instances to be added to the stack view.
    ///
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func addArrangeSubviews(_ subviews: [UIView]) -> Self {
        subviews.forEach { component.addArrangedSubview($0) }
        return self
    }

    /// Sets the layout margins for the stack view and enables layout margins relative arrangement.
    ///
    /// - Parameter value: The directional layout margins (insets) to apply to the stack view.
    ///
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func layoutMargins(_ value: NSDirectionalEdgeInsets) -> Self {
        component.isLayoutMarginsRelativeArrangement = true
        component.directionalLayoutMargins = value
        return self
    }
}
