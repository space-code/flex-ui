//
// flex-ui
// Copyright © 2026 Space Code. All rights reserved.
//

import UIKit

// MARK: - UIContentUnavailableConfiguration + FlexCompatible

@available(iOS 17.0, *)
extension UIContentUnavailableConfiguration: FlexCompatible {}

@available(iOS 17.0, *)
public extension FlexUI where Component == UIContentUnavailableConfiguration {
    /// Sets the image for the content unavailable configuration.
    ///
    /// - Parameter image: The image to display.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func image(_ image: UIImage?) -> FlexUI<UIContentUnavailableConfiguration> {
        var config = component
        config.image = image
        return FlexUI(component: config)
    }

    /// Sets the image properties using a closure.
    ///
    /// - Parameter configure: A closure to configure image properties.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func imageProperties(_ configure: (inout UIContentUnavailableConfiguration.ImageProperties) -> Void)
        -> FlexUI<UIContentUnavailableConfiguration>
    {
        var config = component
        configure(&config.imageProperties)
        return FlexUI(component: config)
    }

    /// Sets the primary text for the content unavailable configuration.
    ///
    /// - Parameter text: The primary text to display.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func text(_ text: String?) -> FlexUI<UIContentUnavailableConfiguration> {
        var config = component
        config.text = text
        return FlexUI(component: config)
    }

    /// Sets the attributed primary text for the content unavailable configuration.
    ///
    /// - Parameter attributedText: The attributed text to display.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func attributedText(_ attributedText: NSAttributedString?) -> FlexUI<UIContentUnavailableConfiguration> {
        var config = component
        config.attributedText = attributedText
        return FlexUI(component: config)
    }

    /// Sets the text properties using a closure.
    ///
    /// - Parameter configure: A closure to configure text properties.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func textProperties(_ configure: (inout UIContentUnavailableConfiguration.TextProperties) -> Void)
        -> FlexUI<UIContentUnavailableConfiguration>
    {
        var config = component
        configure(&config.textProperties)
        return FlexUI(component: config)
    }

    /// Sets the secondary text for the content unavailable configuration.
    ///
    /// - Parameter secondaryText: The secondary text to display.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func secondaryText(_ secondaryText: String?) -> FlexUI<UIContentUnavailableConfiguration> {
        var config = component
        config.secondaryText = secondaryText
        return FlexUI(component: config)
    }

    /// Sets the attributed secondary text for the content unavailable configuration.
    ///
    /// - Parameter attributedText: The attributed secondary text to display.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func secondaryAttributedText(_ attributedText: NSAttributedString?) -> FlexUI<UIContentUnavailableConfiguration> {
        var config = component
        config.secondaryAttributedText = attributedText
        return FlexUI(component: config)
    }

    /// Sets the secondary text properties using a closure.
    ///
    /// - Parameter configure: A closure to configure secondary text properties.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func secondaryTextProperties(_ configure: (inout UIContentUnavailableConfiguration.TextProperties) -> Void)
        -> FlexUI<UIContentUnavailableConfiguration>
    {
        var config = component
        configure(&config.secondaryTextProperties)
        return FlexUI(component: config)
    }

    /// Sets the button configuration.
    ///
    /// - Parameter buttonConfiguration: The button configuration to use.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func button(_ buttonConfiguration: UIButton.Configuration) -> FlexUI<UIContentUnavailableConfiguration> {
        var config = component
        config.button = buttonConfiguration
        return FlexUI(component: config)
    }

    /// Sets the button properties using a closure.
    ///
    /// - Parameter configure: A closure to configure button properties.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func buttonProperties(_ configure: (inout UIContentUnavailableConfiguration.ButtonProperties) -> Void)
        -> FlexUI<UIContentUnavailableConfiguration>
    {
        var config = component
        configure(&config.buttonProperties)
        return FlexUI(component: config)
    }

    /// Sets the secondary button configuration.
    ///
    /// - Parameter buttonConfiguration: The secondary button configuration to use.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func secondaryButton(_ buttonConfiguration: UIButton.Configuration) -> FlexUI<UIContentUnavailableConfiguration> {
        var config = component
        config.secondaryButton = buttonConfiguration
        return FlexUI(component: config)
    }

    /// Sets the secondary button properties using a closure.
    ///
    /// - Parameter configure: A closure to configure secondary button properties.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func secondaryButtonProperties(_ configure: (inout UIContentUnavailableConfiguration.ButtonProperties) -> Void)
        -> FlexUI<UIContentUnavailableConfiguration>
    {
        var config = component
        configure(&config.secondaryButtonProperties)
        return FlexUI(component: config)
    }

    // MARK: - Alignment Configuration

    /// Sets the alignment of the content.
    ///
    /// - Parameter alignment: The alignment to use.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @available(iOS 17.0, *)
    @discardableResult
    func alignment(_ alignment: UIContentUnavailableConfiguration.Alignment) -> FlexUI<UIContentUnavailableConfiguration> {
        var config = component
        config.alignment = alignment
        return FlexUI(component: config)
    }

    /// Sets the background configuration.
    ///
    /// - Parameter background: The background configuration to use.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func background(_ background: UIBackgroundConfiguration) -> FlexUI<UIContentUnavailableConfiguration> {
        var config = component
        config.background = background
        return FlexUI(component: config)
    }

    /// Sets the directional layout margins.
    ///
    /// - Parameter margins: The margins to apply.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func directionalLayoutMargins(_ margins: NSDirectionalEdgeInsets) -> FlexUI<UIContentUnavailableConfiguration> {
        var config = component
        config.directionalLayoutMargins = margins
        return FlexUI(component: config)
    }

    /// Sets uniform margins for all edges.
    ///
    /// - Parameter margin: The margin value to apply to all edges.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func margins(_ margin: CGFloat) -> FlexUI<UIContentUnavailableConfiguration> {
        var config = component
        config.directionalLayoutMargins = NSDirectionalEdgeInsets(
            top: margin,
            leading: margin,
            bottom: margin,
            trailing: margin
        )
        return FlexUI(component: config)
    }

    /// Sets the padding between the image and text.
    ///
    /// - Parameter padding: The padding value.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func imageToTextPadding(_ padding: CGFloat) -> FlexUI<UIContentUnavailableConfiguration> {
        var config = component
        config.imageToTextPadding = padding
        return FlexUI(component: config)
    }

    /// Sets the padding between text and secondary text.
    ///
    /// - Parameter padding: The padding value.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func textToSecondaryTextPadding(_ padding: CGFloat) -> FlexUI<UIContentUnavailableConfiguration> {
        var config = component
        config.textToSecondaryTextPadding = padding
        return FlexUI(component: config)
    }

    /// Sets the padding between text and button.
    ///
    /// - Parameter padding: The padding value.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func textToButtonPadding(_ padding: CGFloat) -> FlexUI<UIContentUnavailableConfiguration> {
        var config = component
        config.textToButtonPadding = padding
        return FlexUI(component: config)
    }

    /// Sets the padding between buttons.
    ///
    /// - Parameter padding: The padding value.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func buttonToSecondaryButtonPadding(_ padding: CGFloat) -> FlexUI<UIContentUnavailableConfiguration> {
        var config = component
        config.buttonToSecondaryButtonPadding = padding
        return FlexUI(component: config)
    }
}
