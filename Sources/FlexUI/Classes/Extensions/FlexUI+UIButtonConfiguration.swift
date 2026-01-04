//
// flex-ui
// Copyright © 2026 Space Code. All rights reserved.
//

import UIKit

// MARK: - UIButton.Configuration + FlexCompatible

@available(iOS 15.0, *)
extension UIButton.Configuration: FlexCompatible {}

@available(iOS 15.0, *)
public extension FlexUI where Component == UIButton.Configuration {
    /// Sets the button title.
    ///
    /// - Parameter title: The title text to display.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func title(_ title: String?) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.title = title
        return FlexUI(component: config)
    }

    /// Sets the attributed title.
    ///
    /// - Parameter attributedTitle: The attributed title to display.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func attributedTitle(_ attributedTitle: AttributedString?) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.attributedTitle = attributedTitle
        return FlexUI(component: config)
    }

    /// Sets the title alignment.
    ///
    /// - Parameter alignment: The title alignment.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func titleAlignment(_ alignment: UIButton.Configuration.TitleAlignment) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.titleAlignment = alignment
        return FlexUI(component: config)
    }

    /// Sets the title line break mode.
    ///
    /// - Parameter mode: The line break mode.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func titleLineBreakMode(_ mode: NSLineBreakMode) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.titleLineBreakMode = mode
        return FlexUI(component: config)
    }

    /// Sets the button subtitle.
    ///
    /// - Parameter subtitle: The subtitle text to display.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func subtitle(_ subtitle: String?) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.subtitle = subtitle
        return FlexUI(component: config)
    }

    /// Sets the attributed subtitle.
    ///
    /// - Parameter attributedSubtitle: The attributed subtitle to display.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func attributedSubtitle(_ attributedSubtitle: AttributedString?) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.attributedSubtitle = attributedSubtitle
        return FlexUI(component: config)
    }

    /// Sets the subtitle line break mode.
    ///
    /// - Parameter mode: The line break mode.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func subtitleLineBreakMode(_ mode: NSLineBreakMode) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.subtitleLineBreakMode = mode
        return FlexUI(component: config)
    }

    // MARK: - Image Configuration

    /// Sets the button image.
    ///
    /// - Parameter image: The image to display.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func image(_ image: UIImage?) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.image = image
        return FlexUI(component: config)
    }

    /// Sets the button image using SF Symbol name.
    ///
    /// - Parameter systemName: The SF Symbol name.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func systemImage(_ systemName: String) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.image = UIImage(systemName: systemName)
        return FlexUI(component: config)
    }

    /// Sets the image placement relative to the title.
    ///
    /// - Parameter placement: The image placement.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func imagePlacement(_ placement: NSDirectionalRectEdge) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.imagePlacement = placement
        return FlexUI(component: config)
    }

    /// Sets the padding between the image and title.
    ///
    /// - Parameter padding: The padding value.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func imagePadding(_ padding: CGFloat) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.imagePadding = padding
        return FlexUI(component: config)
    }

    /// Sets whether the image should be treated as a symbol.
    ///
    /// - Parameter preferredSymbolConfiguration: The symbol configuration.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func preferredSymbolConfiguration(
        _ preferredSymbolConfiguration: UIImage.SymbolConfiguration?
    ) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.preferredSymbolConfigurationForImage = preferredSymbolConfiguration
        return FlexUI(component: config)
    }

    /// Sets the image color transformer.
    ///
    /// - Parameter transformer: The color transformer.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func imageColorTransformer(_ transformer: UIConfigurationColorTransformer?) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.imageColorTransformer = transformer
        return FlexUI(component: config)
    }

    /// Sets the background configuration.
    ///
    /// - Parameter background: The background configuration.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func background(_ background: UIBackgroundConfiguration) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.background = background
        return FlexUI(component: config)
    }

    /// Sets the background color.
    ///
    /// - Parameter color: The background color.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func backgroundColor(_ color: UIColor?) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.background.backgroundColor = color
        return FlexUI(component: config)
    }

    /// Sets the corner radius.
    ///
    /// - Parameter radius: The corner radius value.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func cornerRadius(_ radius: CGFloat) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.background.cornerRadius = radius
        return FlexUI(component: config)
    }

    /// Sets the corner style.
    ///
    /// - Parameter style: The corner style.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func cornerStyle(_ style: UIButton.Configuration.CornerStyle) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.cornerStyle = style
        return FlexUI(component: config)
    }

    // MARK: - Size Configuration

    /// Sets the button size.
    ///
    /// - Parameter size: The button size.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func buttonSize(_ size: UIButton.Configuration.Size) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.buttonSize = size
        return FlexUI(component: config)
    }

    /// Sets the base foreground color.
    ///
    /// - Parameter color: The foreground color.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func baseForegroundColor(_ color: UIColor?) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.baseForegroundColor = color
        return FlexUI(component: config)
    }

    /// Sets the base background color.
    ///
    /// - Parameter color: The background color.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func baseBackgroundColor(_ color: UIColor?) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.baseBackgroundColor = color
        return FlexUI(component: config)
    }

    // MARK: - Content Insets

    /// Sets the content insets.
    ///
    /// - Parameter insets: The directional edge insets.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func contentInsets(_ insets: NSDirectionalEdgeInsets) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.contentInsets = insets
        return FlexUI(component: config)
    }

    /// Sets uniform content insets.
    ///
    /// - Parameter inset: The inset value for all edges.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func contentInsets(_ inset: CGFloat) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.contentInsets = NSDirectionalEdgeInsets(
            top: inset,
            leading: inset,
            bottom: inset,
            trailing: inset
        )
        return FlexUI(component: config)
    }

    /// Sets horizontal and vertical content insets.
    ///
    /// - Parameters:
    ///   - horizontal: The horizontal inset value.
    ///   - vertical: The vertical inset value.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func contentInsets(horizontal: CGFloat, vertical: CGFloat) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.contentInsets = NSDirectionalEdgeInsets(
            top: vertical,
            leading: horizontal,
            bottom: vertical,
            trailing: horizontal
        )
        return FlexUI(component: config)
    }

    /// Sets the activity indicator visibility.
    ///
    /// - Parameter showing: Whether to show the activity indicator.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func showsActivityIndicator(_ showing: Bool) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.showsActivityIndicator = showing
        return FlexUI(component: config)
    }

    /// Sets the activity indicator color transformer.
    ///
    /// - Parameter transformer: The color transformer.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func activityIndicatorColorTransformer(_ transformer: UIConfigurationColorTransformer?) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.activityIndicatorColorTransformer = transformer
        return FlexUI(component: config)
    }

    /// Sets whether to automatically update for button state.
    ///
    /// - Parameter updates: Whether to automatically update.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func automaticallyUpdateForSelection(_ updates: Bool) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.automaticallyUpdateForSelection = updates
        return FlexUI(component: config)
    }

    /// Sets the Mac idiom style.
    ///
    /// - Parameter style: The Mac idiom style.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func macIdiomStyle(_ style: UIButton.Configuration.MacIdiomStyle) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.macIdiomStyle = style
        return FlexUI(component: config)
    }

    /// Sets the title text attributes transformer.
    ///
    /// - Parameter transformer: The text attributes transformer.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func titleTextAttributesTransformer(
        _ transformer: UIConfigurationTextAttributesTransformer?
    ) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.titleTextAttributesTransformer = transformer
        return FlexUI(component: config)
    }

    /// Sets the subtitle text attributes transformer.
    ///
    /// - Parameter transformer: The text attributes transformer.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func subtitleTextAttributesTransformer(
        _ transformer: UIConfigurationTextAttributesTransformer?
    ) -> FlexUI<UIButton.Configuration> {
        var config = component
        config.subtitleTextAttributesTransformer = transformer
        return FlexUI(component: config)
    }

    /// Sets the button as a primary action button with filled style.
    ///
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func primaryActionStyle() -> FlexUI<UIButton.Configuration> {
        var config = component
        config.buttonSize = .large
        config.cornerStyle = .large
        return FlexUI(component: config)
    }

    /// Sets the button as a secondary action button with tinted style.
    ///
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func secondaryActionStyle() -> FlexUI<UIButton.Configuration> {
        var config = component
        config.buttonSize = .medium
        config.cornerStyle = .medium
        return FlexUI(component: config)
    }

    /// Applies a custom configuration using a closure.
    ///
    /// - Parameter configure: A closure to configure the button configuration.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    func configure(_ configure: (inout UIButton.Configuration) -> Void) -> FlexUI<UIButton.Configuration> {
        var config = component
        configure(&config)
        return FlexUI(component: config)
    }
}
