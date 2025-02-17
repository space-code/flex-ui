<h1 align="center" style="margin-top: 0px;">flex-ui</h1>

<p align="center">
<a href="https://github.com/space-code/flex-ui/blob/main/LICENSE"><img alt="License" src="https://img.shields.io/github/license/space-code/flex-ui?style=flat"></a> 
<a href="https://swiftpackageindex.com/space-code/flex-ui"><img alt="Swift Compatibility" src="https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fspace-code%2Fflex-ui%2Fbadge%3Ftype%3Dswift-versions"/></a> 
<a href="https://swiftpackageindex.com/space-code/flex-ui"><img alt="Platform Compatibility" src="https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fspace-code%2Fflex-ui%2Fbadge%3Ftype%3Dplatforms"/></a> 
<a href="https://github.com/space-code/flex-ui"><img alt="CI" src="https://github.com/space-code/flex-ui/actions/workflows/ci.yml/badge.svg?branch=main"></a>
<a href="https://github.com/space-code/flex-ui"><img alt="GitHub release; latest by date" src="https://img.shields.io/github/v/release/space-code/flex-ui"></a>
<a href="https://github.com/apple/swift-package-manager" alt="flex-ui on Swift Package Manager" title="flex-ui on Swift Package Manager"><img src="https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg" /></a>
</p>

## Description
`flex-ui` is a small tool that helps chain UI configurations.

- [Usage](#usage)
- [Requirements](#requirements)
- [Installation](#installation)
- [Communication](#communication)
- [Contributing](#contributing)
- [Author](#author)
- [License](#license)

## Usage

```swift
import FlexUI

let label = UILabel()
        
label
    .flex
    .text("Label Text")
    .textColor(.black)
    .font(.systemFont(ofSize: 17.0))
```

New configuration methods can be added by extending the interface of the Flex component, such as:

```swift
import FlexUI
import UIKit

public enum Fonts {
    public enum Headings {
        /// The largest heading style.
        case h1

        /// A slightly smaller heading style.
        case h2

        /// A medium-sized heading style.
        case h3

        var font: UIFont {
            /// Implementation to return a specific UIFont based on the heading style.
        }
    }
}

public extension FlexUI where Component: UIButton {
    @discardableResult
    @MainActor
    func font(_ heading: Fonts.Headings) -> Self {
        component.titleLabel?.font = heading.font
        return self
    }
}

let button = UIButton()

button
    .flex
    .font(.h3)
```

## Requirements

- iOS 14.0+
- Xcode 16.0
- Swift 6.0

## Installation
### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. It is in early development, but `flex-ui` does support its use on supported platforms.

Once you have your Swift package set up, adding `flex-ui` as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/space-code/flex-ui.git", .upToNextMajor(from: "1.0.0"))
]
```

## Communication
- If you **found a bug**, open an issue.
- If you **have a feature request**, open an issue.
- If you **want to contribute**, submit a pull request.

## Contributing
Bootstrapping development environment

```
make bootstrap
```

Please feel free to help out with this project! If you see something that could be made better or want a new feature, open up an issue or send a Pull Request!

## Author
Nikita Vasilev, nv3212@gmail.com

## License
flex-ui is available under the MIT license. See the LICENSE file for more info.