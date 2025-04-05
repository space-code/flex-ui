//
// flex-ui
// Copyright © 2025 Space Code. All rights reserved.
//

import UIKit

public extension FlexUI where Component: UILabel {
    /// Sets the text of the label.
    ///
    /// - Parameter text: The string to display as the label's text.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func text(_ text: String?) -> Self {
        component.text = text
        return self
    }

    /// Sets the attributed text of the label.
    ///
    /// - Parameter attributedText: The attributed string to display as the label's text.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func attributedText(_ attributedText: NSAttributedString?) -> Self {
        component.attributedText = attributedText
        return self
    }

    /// Sets the font of the label.
    ///
    /// - Parameter font: The font to be applied to the label's text.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func font(_ font: UIFont) -> Self {
        component.font = font
        return self
    }

    /// Sets the text color of the label.
    ///
    /// - Parameter color: The color to apply to the label's text.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func textColor(_ color: UIColor) -> Self {
        component.textColor = color
        return self
    }

    /// Sets the number of lines for the label's text.
    ///
    /// - Parameter numberOfLines: The number of lines to which the label's text can wrap.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func numberOfLines(_ numberOfLines: Int) -> Self {
        component.numberOfLines = numberOfLines
        return self
    }

    /// Sets the text alignment of the label.
    ///
    /// - Parameter textAlignment: The alignment of the text within the label.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        component.textAlignment = textAlignment
        return self
    }
}
