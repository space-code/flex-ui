//
// flex-ui
// Copyright © 2026 Space Code. All rights reserved.
//

import UIKit

/// An extension to `FlexUI` that adds helper methods for configuring `UITableView` properties.
/// These methods allow for fluent configuration of properties such as scroll indicators, selection,
/// and registration of cells and headers.
public extension FlexUI where Component: UITableView {
    /// Sets the delegate for the table view.
    ///
    /// - Parameter delegate: The delegate object that conforms to `UITableViewDelegate`.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func delegate(_ delegate: UITableViewDelegate?) -> Self {
        component.delegate = delegate
        return self
    }

    /// Sets the data source for the table view.
    ///
    /// - Parameter dataSource: The data source object that conforms to `UITableViewDataSource`.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func dataSource(_ dataSource: UITableViewDataSource?) -> Self {
        component.dataSource = dataSource
        return self
    }
}
