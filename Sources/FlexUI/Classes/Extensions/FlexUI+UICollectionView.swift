//
// flex-ui
// Copyright © 2024 Space Code. All rights reserved.
//

import UIKit

/// An extension to `FlexUI` that adds helper methods for configuring `UICollectionView` properties.
/// These methods allow for fluent configuration of properties such as scroll indicators, selection,
/// and registration of cells and headers.
public extension FlexUI where Component: UICollectionView {
    /// Toggles the visibility of vertical and horizontal scroll indicators.
    ///
    /// - Parameter isShow: A boolean indicating whether to show the scroll indicators.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func showScollIndicators(_ isShow: Bool) -> Self {
        component.showsVerticalScrollIndicator = isShow
        component.showsHorizontalScrollIndicator = isShow
        return self
    }

    /// Enables or disables scrolling for the collection view.
    ///
    /// - Parameter isEnabled: A boolean indicating whether scrolling is enabled or disabled.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func isScrollEnabled(_ isEnabled: Bool) -> Self {
        component.isScrollEnabled = isEnabled
        return self
    }

    /// Allows or disallows selection of items in the collection view.
    ///
    /// - Parameter isAllowSelection: A boolean indicating whether selection is allowed.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func allowSelection(_ isAllowSelection: Bool) -> Self {
        component.allowsSelection = isAllowSelection
        return self
    }

    /// Toggles the vertical bounce behavior of the collection view.
    ///
    /// - Parameter isAlwaysBounceVertically: A boolean indicating whether vertical bounce should always be allowed.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func alwaysBounceVertical(_ isAlwaysBounceVertically: Bool) -> Self {
        component.alwaysBounceVertical = isAlwaysBounceVertically
        return self
    }

    /// Registers a class for use as a collection view cell.
    ///
    /// - Parameters:
    ///   - cellClass: The class of the cell to register.
    ///   - identifier: The reuse identifier for the cell.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func register(_ cellClass: AnyClass?, with identifier: String) -> Self {
        component.register(cellClass, forCellWithReuseIdentifier: identifier)
        return self
    }

    /// Registers a nib for use as a collection view cell.
    ///
    /// - Parameters:
    ///   - nib: The nib to register.
    ///   - identifier: The reuse identifier for the cell.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func register(_ nib: UINib?, with identifier: String) -> Self {
        component.register(nib, forCellWithReuseIdentifier: identifier)
        return self
    }

    /// Registers a class for use as a collection view header.
    ///
    /// - Parameters:
    ///   - headerClass: The class of the header to register.
    ///   - identifier: The reuse identifier for the header.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func register(_ headerClass: AnyClass?, _ identifier: String) -> Self {
        component.register(
            headerClass,
            forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: identifier
        )
        return self
    }

    /// Sets the delegate for the collection view.
    ///
    /// - Parameter delegate: The delegate object that conforms to `UICollectionViewDelegate`.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func delegate(_ delegate: UICollectionViewDelegate?) -> Self {
        component.delegate = delegate
        return self
    }

    /// Sets the data source for the collection view.
    ///
    /// - Parameter dataSource: The data source object that conforms to `UICollectionViewDataSource`.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func dataSource(_ dataSource: UICollectionViewDataSource?) -> Self {
        component.dataSource = dataSource
        return self
    }

    /// Sets the content inset for the collection view.
    ///
    /// - Parameter inset: The insets to apply to the content of the collection view.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func contentInset(_ inset: UIEdgeInsets) -> Self {
        component.contentInset = inset
        return self
    }

    /// Enables or disables paging for the collection view.
    ///
    /// - Parameter isPagingEnabled: A boolean indicating whether paging is enabled.
    /// - Returns: The current instance of `FlexUI` for further configuration.
    @discardableResult
    @MainActor
    func isPagingEnabled(_ isPagingEnabled: Bool) -> Self {
        component.isPagingEnabled = isPagingEnabled
        return self
    }
}
