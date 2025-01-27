//
// flex-ui
// Copyright © 2025 Space Code. All rights reserved.
//

import Foundation

/// A private class that wraps a closure to be executed as an action for a `UIControl`.
/// This class allows associating arbitrary closure actions with buttons, and is used internally
/// to manage custom button actions in the `FlexUI` extension.
final class Command {
    // MARK: Properties

    /// The closure that will be executed when the button action is triggered.
    let block: () -> Void

    // MARK: Initialization

    /// Initializes a new instance of `Command` with the provided closure.
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
