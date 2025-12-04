//
// flex-ui
// Copyright © 2025 Space Code. All rights reserved.
//

import UIKit

@MainActor private let kMapTable = NSMapTable<AnyObject, Command>.weakToStrongObjects()

/// An extension to `FlexUI` that adds helper methods for configuring `UIControl` properties.
public extension FlexUI where Component: UIControl {
    /// Adds a custom command block to be executed when the control is tapped.
    ///
    /// - Parameters:
    ///   - command: The closure to be executed.
    ///   - event: The event to associate the command with (default is `.touchUpInside`).
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func add(command: (() -> Void)?, event: UIControl.Event = .touchUpInside) -> Self {
        guard let command else {
            return self
        }

        let componentCommand = Command(block: command)
        component.removeTarget(nil, action: nil, for: event)
        component.addTarget(componentCommand, action: #selector(componentCommand.action), for: event)
        kMapTable.setObject(componentCommand, forKey: component)
        return self
    }

    /// Adds a custom command block to be executed when the control is tapped, with access to the control itself.
    ///
    /// - Parameters:
    ///   - command: The closure to be executed with the component as the parameter.
    ///   - event: The event to associate the command with.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func add(command: ((Component) -> Void)?, event: UIControl.Event) -> Self {
        guard let command else {
            return self
        }

        let componentCommand = Command { [weak component] in
            if let component {
                command(component)
            }
        }

        component.removeTarget(nil, action: nil, for: event)
        component.addTarget(componentCommand, action: #selector(componentCommand.action), for: event)
        kMapTable.setObject(componentCommand, forKey: component)
        return self
    }
}
