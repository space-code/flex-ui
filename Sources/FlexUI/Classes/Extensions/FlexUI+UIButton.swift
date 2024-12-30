//
// flex-ui
// Copyright © 2024 Space Code. All rights reserved.
//

import UIKit

// MARK: - ButtonCommand

/// A private class that wraps a closure to be executed as an action for a `UIButton`.
/// This class allows associating arbitrary closure actions with buttons, and is used internally
/// to manage custom button actions in the `FlexUI` extension.
private final class ButtonCommand {
    // MARK: Properties

    /// The closure that will be executed when the button action is triggered.
    let block: () -> Void

    // MARK: Initialization

    /// Initializes a new instance of `ButtonCommand` with the provided closure.
    ///
    /// - Parameter block: The closure to be executed when the button is tapped.
    init(block: @escaping () -> Void) {
        self.block = block
    }

    // MARK: Actions

    /// The action method that is triggered when the associated button's event occurs.
    /// It executes the stored closure.
    @objc
    func action() {
        block()
    }
}

@MainActor private let kMapTable = NSMapTable<AnyObject, ButtonCommand>.weakToStrongObjects()

/// An extension to `FlexUI` that adds helper methods for configuring `UIButton` properties.
/// These methods allow for fluent configuration of button properties such as title, image, alignment, and actions.
public extension FlexUI where Component: UIButton {
    /// Adds an action to the button for a specified event.
    ///
    /// - Parameters:
    ///   - target: The object that receives the action message.
    ///   - selector: The selector representing the action method.
    ///   - event: The event to associate the action with (e.g., `.touchUpInside`).
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func action(_ target: Any?, _ selector: Selector, _ event: UIControl.Event) -> Self {
        component.addTarget(target, action: selector, for: event)
        return self
    }

    /// Sets the title for a specific button state.
    ///
    /// - Parameters:
    ///   - title: The title to display on the button.
    ///   - state: The state for which to set the title (default is `.normal`).
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func title(_ title: String, for state: UIControl.State = .normal) -> Self {
        component.setTitle(title, for: state)
        return self
    }

    /// Sets the attributed title for a specific button state.
    ///
    /// - Parameters:
    ///   - title: The attributed string to display on the button.
    ///   - state: The state for which to set the title (default is `.normal`).
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func attributedTitle(_ title: NSAttributedString?, for state: UIControl.State = .normal) -> Self {
        component.setAttributedTitle(title, for: state)
        return self
    }

    /// Sets the title color for a specific button state.
    ///
    /// - Parameters:
    ///   - color: The color to set for the title text.
    ///   - state: The state for which to set the title color (default is `.normal`).
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func titleColor(_ color: UIColor, for state: UIControl.State = .normal) -> Self {
        component.setTitleColor(color, for: state)
        return self
    }

    /// Sets the text alignment of the button's title.
    ///
    /// - Parameter alignment: The text alignment to apply (e.g., `.center`, `.left`, `.right`).
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func textAlignment(_ alignment: NSTextAlignment) -> Self {
        component.titleLabel?.textAlignment = alignment
        return self
    }

    /// Sets the number of lines allowed for the button's title.
    ///
    /// - Parameter number: The maximum number of lines for the title (default is 1).
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func numberOfLines(_ number: Int) -> Self {
        component.titleLabel?.numberOfLines = number
        return self
    }

    /// Sets the minimum scale factor for the button's title.
    ///
    /// - Parameter value: The minimum scale factor to apply (e.g., 0.5).
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func minimumScaleFactor(_ value: CGFloat) -> Self {
        component.titleLabel?.minimumScaleFactor = value
        return self
    }

    /// Sets the line break mode for the button's title.
    ///
    /// - Parameter mode: The line break mode to apply (e.g., `.byWordWrapping`, `.byTruncatingTail`).
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func lineBreakMode(_ mode: NSLineBreakMode) -> Self {
        component.titleLabel?.lineBreakMode = mode
        return self
    }

    /// Sets the content mode for the button's image view.
    ///
    /// - Parameter contentMode: The content mode to apply to the image view (e.g., `.scaleAspectFit`).
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func imageContentMode(_ contentMode: UIView.ContentMode) -> Self {
        component.imageView?.contentMode = contentMode
        return self
    }

    /// Sets the horizontal content alignment for the button.
    ///
    /// - Parameter adjustment: The horizontal alignment to apply (e.g., `.center`, `.left`, `.right`).
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func contentHorizontalAlignment(_ adjustment: UIControl.ContentHorizontalAlignment) -> Self {
        component.contentHorizontalAlignment = adjustment
        return self
    }

    /// Sets the vertical content alignment for the button.
    ///
    /// - Parameter adjustment: The vertical alignment to apply (e.g., `.center`, `.top`, `.bottom`).
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func contentVerticalAlignment(_ adjustment: UIControl.ContentVerticalAlignment) -> Self {
        component.contentVerticalAlignment = adjustment
        return self
    }

    /// Sets the image edge insets for the button.
    ///
    /// - Parameter insets: The insets to apply to the image view.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func imageEdgeInsets(_ insets: UIEdgeInsets) -> Self {
        component.imageEdgeInsets = insets
        return self
    }

    /// Sets the title edge insets for the button.
    ///
    /// - Parameter insets: The insets to apply to the title label.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func titleEdgeInsets(_ insets: UIEdgeInsets) -> Self {
        component.titleEdgeInsets = insets
        return self
    }

    /// Sets the content edge insets for the button.
    ///
    /// - Parameter inset: The insets to apply to the entire button's content.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func contentEdgeInsets(_ inset: UIEdgeInsets) -> Self {
        component.contentEdgeInsets = inset
        return self
    }

    /// Sets the semantic content attribute for the button.
    ///
    /// - Parameter atrib: The semantic content attribute to apply (e.g., `.unspecified`, `.forceLeftToRight`).
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func semanticContentAttribute(_ atrib: UISemanticContentAttribute) -> Self {
        component.semanticContentAttribute = atrib
        return self
    }

    /// Sets the background image for a specific button state.
    ///
    /// - Parameters:
    ///   - image: The image to set as the background.
    ///   - controlState: The state for which to set the background image (default is `.normal`).
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func backgroundImage(_ image: UIImage?, for controlState: UIControl.State = .normal) -> Self {
        component.setBackgroundImage(image, for: controlState)
        return self
    }

    /// Enables or disables the button.
    ///
    /// - Parameter isEnable: A boolean indicating whether the button should be enabled or disabled.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func enable(_ isEnable: Bool) -> Self {
        component.isEnabled = isEnable
        return self
    }

    /// Adds a custom command block to be executed when the button is tapped.
    ///
    /// - Parameters:
    ///   - command: The closure to be executed.
    ///   - event: The event to associate the command with (default is `.touchUpInside`).
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func add(command: (() -> Void)?, event: UIControl.Event = .touchUpInside) -> Self {
        guard let command = command else {
            return self
        }

        let buttonCommand = ButtonCommand(block: command)
        component.removeTarget(nil, action: nil, for: event)
        component.addTarget(buttonCommand, action: #selector(buttonCommand.action), for: event)
        kMapTable.setObject(buttonCommand, forKey: component)
        return self
    }

    /// Adds a custom command block to be executed when the button is tapped, with access to the button itself.
    ///
    /// - Parameters:
    ///   - command: The closure to be executed with the button as the parameter.
    ///   - event: The event to associate the command with.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func add(command: ((UIButton) -> Void)?, event: UIControl.Event) -> Self {
        guard let command = command else {
            return self
        }

        let buttonCommand = ButtonCommand { [weak component] in
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
