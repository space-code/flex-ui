//
// flex-ui
// Copyright © 2024 Space Code. All rights reserved.
//

/// A generic class that represents a flexible UI component.
/// This class allows you to wrap any component and provide additional flexibility for customization or configuration.
public final class FlexUI<Component> {
    /// The wrapped UI component of the specified type.
    /// This component is passed during initialization and can be accessed for further customization.
    public let component: Component

    /// Initializes a new instance of `FlexUI` with the provided component.
    ///
    /// - Parameter component: The component to be wrapped by `FlexUI`.
    /// This allows you to configure the component later as needed.
    public init(component: Component) {
        self.component = component
    }
}
