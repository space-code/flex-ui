//
// flex-ui
// Copyright © 2025 Space Code. All rights reserved.
//

import UIKit

@MainActor private let kMapTable = NSMapTable<AnyObject, Command>.weakToStrongObjects()

public extension FlexUI where Component: UITextField {
    /// Sets the font of the text field.
    ///
    /// - Parameter font: The font to apply to the text field's text.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func font(_ font: UIFont) -> Self {
        component.font = font
        return self
    }

    /// Sets the placeholder text for the text field.
    ///
    /// - Parameter placeholder: The string to display as the placeholder text.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func placeholder(_ placeholder: String) -> Self {
        component.placeholder = placeholder
        return self
    }

    /// Sets the text color of the text field.
    ///
    /// - Parameter color: The color to apply to the text in the text field.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func textColor(_ color: UIColor) -> Self {
        component.textColor = color
        return self
    }

    /// Sets the text of the text field.
    ///
    /// - Parameter text: The string to display as the text in the text field.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func text(_ text: String?) -> Self {
        component.text = text
        return self
    }

    /// Sets the delegate of the text field.
    ///
    /// - Parameter delegate: The delegate to assign to the text field.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func delegate(_ delegate: UITextFieldDelegate) -> Self {
        component.delegate = delegate
        return self
    }

    /// Sets the attributed placeholder text with custom attributes for the text field.
    ///
    /// - Parameters:
    ///   - placeholder: The placeholder text to display.
    ///   - attributes: The attributes to apply to the placeholder text.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func attributedPlaceholder(_ placeholder: String, _ attributes: [NSAttributedString.Key: Any]) -> Self {
        component.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: attributes)
        return self
    }

    /// Sets the keyboard type for the text field.
    ///
    /// - Parameter type: The keyboard type to use for the text field.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func keyboardType(_ type: UIKeyboardType) -> Self {
        component.keyboardType = type
        return self
    }

    /// Sets the text alignment for the text field.
    ///
    /// - Parameter alignment: The text alignment to apply to the text field.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func textAlignment(_ alignment: NSTextAlignment) -> Self {
        component.textAlignment = alignment
        return self
    }

    /// Sets the return key type for the text field.
    ///
    /// - Parameter type: The return key type to use for the text field.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func returnKeyType(_ type: UIReturnKeyType) -> Self {
        component.returnKeyType = type
        return self
    }

    /// Sets the autocorrection type for the text field.
    ///
    /// - Parameter type: The autocorrection type to use for the text field.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func autocorrectionType(_ type: UITextAutocorrectionType) -> Self {
        component.autocorrectionType = type
        return self
    }

    /// Sets the text content type for the text field.
    ///
    /// - Parameter type: The text content type to use for the text field.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func textContentType(_ type: UITextContentType) -> Self {
        component.textContentType = type
        return self
    }

    /// Sets the minimum font size for the text field's text.
    ///
    /// - Parameter size: The minimum font size for the text field's text.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func minFontSize(_ size: CGFloat) -> Self {
        component.minimumFontSize = size
        component.adjustsFontSizeToFitWidth = true
        return self
    }

    /// Adds a command to be executed when a specified event occurs on the UIControl component.
    /// The method is annotated with `@discardableResult` to allow the return value to be ignored,
    /// and `@MainActor` to ensure it runs on the main thread.
    ///
    /// - Parameters:
    ///   - command: A closure to be executed when the event occurs. Can be `nil`, in which case no action is added.
    ///   - event: The `UIControl.Event` that triggers the command.
    /// - Returns: The instance of `Self` to allow method chaining.
    @discardableResult
    @MainActor
    func add(command: (() -> Void)?, event: UIControl.Event) -> Self {
        guard let command = command else {
            return self
        }

        let buttonCommand = Command(block: command)
        component.removeTarget(nil, action: nil, for: event)
        component.addTarget(buttonCommand, action: #selector(buttonCommand.action), for: event)
        kMapTable.setObject(buttonCommand, forKey: component)
        return self
    }

    /// Adds a command to be executed when a specified event occurs on the `UITextField` component.
    /// The method is annotated with `@discardableResult` to allow the return value to be ignored,
    /// and `@MainActor` to ensure it runs on the main thread.
    ///
    /// - Parameters:
    ///   - command: A closure that receives the `UITextField` as a parameter when the event occurs. Can be `nil`.
    ///   - event: The `UIControl.Event` that triggers the command.
    /// - Returns: The instance of `Self` to allow method chaining.
    @discardableResult
    @MainActor
    func add(command: ((UITextField) -> Void)?, event: UIControl.Event) -> Self {
        guard let command = command else {
            return self
        }

        let buttonCommand = Command { [weak component] in
            if let component = component {
                command(component)
            }
        }

        component.removeTarget(nil, action: nil, for: event)
        component.addTarget(buttonCommand, action: #selector(buttonCommand.action), for: event)
        kMapTable.setObject(buttonCommand, forKey: component)
        return self
    }
}
