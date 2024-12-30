//
// flex-ui
// Copyright © 2024 Space Code. All rights reserved.
//

import UIKit

public extension FlexUI where Component: UIScrollView {
    /// Toggles the visibility of the scroll indicators for both vertical and horizontal scroll views.
    ///
    /// - Parameter isVisible: A boolean indicating whether the scroll indicators should be visible.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func showScrollIndicators(_ isVisible: Bool) -> Self {
        component.showsVerticalScrollIndicator = isVisible
        component.showsHorizontalScrollIndicator = isVisible
        return self
    }

    /// Sets the insets for the scroll indicators.
    ///
    /// - Parameter inset: The inset to apply to the scroll indicators.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func scrollIndicatorInsets(_ inset: UIEdgeInsets) -> Self {
        component.scrollIndicatorInsets = inset
        return self
    }

    /// Sets the behavior for adjusting the content inset.
    ///
    /// - Parameter behavior: The content inset adjustment behavior to apply to the scroll view.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func contentInsetAdjustmentBehavior(_ behavior: UIScrollView.ContentInsetAdjustmentBehavior) -> Self {
        component.contentInsetAdjustmentBehavior = behavior
        return self
    }

    /// Sets the content inset for the scroll view.
    ///
    /// - Parameter inset: The content inset to apply, defaulting to `.zero` if not provided.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func contentInset(_ inset: UIEdgeInsets = .zero) -> Self {
        component.contentInset = inset
        return self
    }

    /// Sets the style of the scroll indicators.
    ///
    /// - Parameter style: The indicator style to apply to the scroll view.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func indicatorStyle(_ style: UIScrollView.IndicatorStyle) -> Self {
        component.indicatorStyle = style
        return self
    }

    /// Enables or disables scrolling for the scroll view.
    ///
    /// - Parameter isScrollEnable: A boolean indicating whether scrolling should be enabled.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func enableScrolling(_ isScrollEnable: Bool) -> Self {
        component.isScrollEnabled = isScrollEnable
        return self
    }

    /// Sets the delegate for the scroll view.
    ///
    /// - Parameter delegate: The delegate to assign to the scroll view.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func delegate(_ delegate: UIScrollViewDelegate) -> Self {
        component.delegate = delegate
        return self
    }

    /// Toggles the bouncing effect when scrolling reaches the edge of the content.
    ///
    /// - Parameter isEnable: A boolean indicating whether the bouncing effect should be enabled.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func bounce(_ isEnable: Bool) -> Self {
        component.bounces = isEnable
        return self
    }
}
