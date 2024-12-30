//
// flex-ui
// Copyright © 2024 Space Code. All rights reserved.
//

import Foundation

// MARK: - FlexCompatible

/// A protocol that adds flexibility to any type by allowing it to be wrapped in a `FlexUI` component.
/// Types conforming to this protocol can use the `flex` property to access a `FlexUI` wrapper for further customization.
public protocol FlexCompatible {
    /// The associated type representing the component wrapped by `FlexUI`.
    associatedtype ComponentType

    /// A computed property that returns a `FlexUI` wrapper for the current instance.
    /// This allows for easy configuration and manipulation of the component.
    var flex: FlexUI<ComponentType> { get }
}

public extension FlexCompatible {
    /// Default implementation of the `flex` property for types conforming to `FlexCompatible`.
    /// This wraps the current instance in a `FlexUI` component, allowing for configuration.
    var flex: FlexUI<Self> {
        FlexUI(component: self)
    }
}

// MARK: - NSObject + FlexCompatible

/// Extension to make `NSObject` conform to `FlexCompatible`.
/// This enables all `NSObject` instances to be wrapped with a `FlexUI` component,
/// providing them with the flexibility to be configured easily.
extension NSObject: FlexCompatible {}
