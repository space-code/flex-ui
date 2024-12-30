//
// flex-ui
// Copyright © 2024 Space Code. All rights reserved.
//

import UIKit

public extension FlexUI where Component: UITextView {
    /// Sets the text color of the text view.
    ///
    /// - Parameter color: The color to apply to the text in the text view.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func textColor(_ color: UIColor) -> Self {
        component.textColor = color
        return self
    }

    /// Enables or disables scrolling for the text view.
    ///
    /// - Parameter isEnable: A boolean indicating whether scrolling should be enabled.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func isScrollEnabled(_ isEnable: Bool) -> Self {
        component.isScrollEnabled = isEnable
        return self
    }

    /// Sets the font of the text view.
    ///
    /// - Parameter font: The font to apply to the text view's text.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func font(_ font: UIFont) -> Self {
        component.font = font
        return self
    }

    /// Sets the text of the text view.
    ///
    /// - Parameter text: The string to display as the text in the text view.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func text(_ text: String) -> Self {
        component.text = text
        return self
    }

    /// Sets the line break mode for the text view.
    ///
    /// - Parameter mode: The line break mode to use for the text view's text.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func lineBreakMode(_ mode: NSLineBreakMode) -> Self {
        component.textContainer.lineBreakMode = mode
        return self
    }

    /// Sets the keyboard type for the text view.
    ///
    /// - Parameter type: The keyboard type to use for the text view.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func keyboardType(_ type: UIKeyboardType) -> Self {
        component.keyboardType = type
        return self
    }

    /// Sets the text alignment for the text view.
    ///
    /// - Parameter alignment: The text alignment to apply to the text view.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func textAlignment(_ alignment: NSTextAlignment) -> Self {
        component.textAlignment = alignment
        return self
    }

    /// Sets the attributed text for the text view.
    ///
    /// - Parameter text: The attributed string to display in the text view.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func attributedText(_ text: NSAttributedString) -> Self {
        component.attributedText = text
        return self
    }

    /// Enables or disables editing for the text view.
    ///
    /// - Parameter isEditable: A boolean indicating whether editing should be enabled.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func isEditable(_ isEditable: Bool) -> Self {
        component.isEditable = isEditable
        return self
    }

    /// Enables or disables text selection for the text view.
    ///
    /// - Parameter selectable: A boolean indicating whether text selection should be enabled.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func isSelectable(_ selectable: Bool) -> Self {
        component.isSelectable = selectable
        return self
    }

    /// Sets the autocorrection type for the text view.
    ///
    /// - Parameter type: The autocorrection type to use for the text view.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func autocorrectionType(_ type: UITextAutocorrectionType) -> Self {
        component.autocorrectionType = type
        return self
    }

    /// Sets the text content type for the text view.
    ///
    /// - Parameter type: The text content type to use for the text view.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func textContentType(_ type: UITextContentType) -> Self {
        component.textContentType = type
        return self
    }

    /// Sets the delegate for the text view.
    ///
    /// - Parameter target: The delegate to assign to the text view.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func delegate(_ target: UITextViewDelegate) -> Self {
        component.delegate = target
        return self
    }
}
