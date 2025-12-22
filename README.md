<h1 align="center" style="margin-top: 0px;">flex-ui</h1>

<p align="center">
<a href="https://github.com/space-code/flex-ui/blob/main/LICENSE"><img alt="License" src="https://img.shields.io/github/license/space-code/flex-ui?style=flat"></a> 
<a href="https://swiftpackageindex.com/space-code/flex-ui"><img alt="Swift Compatibility" src="https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fspace-code%2Fflex-ui%2Fbadge%3Ftype%3Dswift-versions"/></a> 
<a href="https://swiftpackageindex.com/space-code/flex-ui"><img alt="Platform Compatibility" src="https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fspace-code%2Fflex-ui%2Fbadge%3Ftype%3Dplatforms"/></a> 
<a href="https://github.com/space-code/flex-ui/actions/workflows/ci.yml"><img alt="CI" src="https://github.com/space-code/flex-ui/actions/workflows/ci.yml/badge.svg?branch=main"></a>
<a href="https://github.com/apple/swift-package-manager" alt="flex-ui on Swift Package Manager" title="flex-ui on Swift Package Manager"><img src="https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg" /></a>
<a href="https://github.com/space-code/flex-ui"><img alt="GitHub release; latest by date" src="https://img.shields.io/github/v/release/space-code/flex-ui"></a>
</p>

## Description
FlexUI is a lightweight Swift framework that provides an elegant, chainable API for configuring UIKit components. Write cleaner, more readable UI code with a fluent interface that makes view configuration a breeze.

## Features

✨ **Chainable Configuration** - Fluent API for setting up UI components  
🎯 **Type-Safe** - Leverages Swift's type system for compile-time safety  
🔧 **Extensible** - Easy to add custom configuration methods  
📱 **UIKit Native** - Works seamlessly with all UIKit components  
⚡ **Lightweight** - Minimal footprint with zero dependencies  

## Table of Contents

- [Requirements](#requirements)
- [Installation](#installation)
- [Quick Start](#quick-start)
- [Usage](#usage)
  - [Basic Configuration](#basic-configuration)
  - [Extending FlexUI](#extending-flexui)
- [Common Use Cases](#common-use-cases)
- [Communication](#communication)
- [Contributing](#contributing)
  - [Development Setup](#development-setup)
- [Author](#author)
- [License](#license)

## Requirements

| Platform  | Minimum Version |
|-----------|----------------|
| iOS       | 13.0+          |
| macOS     | 10.15+         |
| watchOS   | 7.0+           |
| tvOS      | 13+            |
| visionOS  | 1.0            |
| Xcode     | 15.3+          |
| Swift     | 5.10+          |

## Installation

### Swift Package Manager

Add the following dependency to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/space-code/flex-ui.git", from: "1.5.0")
]
```

Or add it through Xcode:

1. File > Add Package Dependencies
2. Enter package URL: `https://github.com/space-code/flex-ui.git`
3. Select version requirements

## Quick Start

```swift
import FlexUI

let label = UILabel()
    .flex
    .text("Hello, FlexUI!")
    .textColor(.systemBlue)
    .font(.systemFont(ofSize: 17.0))
    .textAlignment(.center)
```

## Usage

### Basic Configuration

FlexUI provides a `.flex` property on UIKit components that enables chainable configuration:

```swift
import FlexUI

// Configure a UILabel
let titleLabel = UILabel()
    .flex
    .text("Welcome")
    .textColor(.black)
    .font(.boldSystemFont(ofSize: 24))
    .numberOfLines(0)

// Configure a UIButton
let actionButton = UIButton()
    .flex
    .title("Tap Me", for: .normal)
    .backgroundColor(.systemBlue)
    .cornerRadius(8)
    .tintColor(.white)

// Configure a UIImageView
let imageView = UIImageView()
    .flex
    .image(UIImage(named: "logo"))
    .contentMode(.scaleAspectFit)
    .clipsToBounds(true)
```

### Extending FlexUI

Create custom configuration methods by extending the FlexUI interface:

```swift
import FlexUI
import UIKit

// Define custom font styles
public enum Fonts {
    public enum Headings {
        case h1
        case h2
        case h3
        
        var font: UIFont {
            switch self {
            case .h1: return .boldSystemFont(ofSize: 32)
            case .h2: return .boldSystemFont(ofSize: 24)
            case .h3: return .boldSystemFont(ofSize: 18)
            }
        }
    }
}

// Extend FlexUI for UILabel
public extension FlexUI where Component: UILabel {
    @discardableResult
    @MainActor
    func heading(_ style: Fonts.Headings) -> Self {
        component.font = style.font
        return self
    }
}

// Usage
let heading = UILabel()
    .flex
    .text("Article Title")
    .heading(.h1)
    .textColor(.black)
```

**Custom Button Styles:**

```swift
public extension FlexUI where Component: UIButton {
    @discardableResult
    @MainActor
    func primaryStyle() -> Self {
        component.backgroundColor = .systemBlue
        component.setTitleColor(.white, for: .normal)
        component.layer.cornerRadius = 8
        component.titleLabel?.font = .boldSystemFont(ofSize: 16)
        return self
    }
}

// Usage
let button = UIButton()
    .flex
    .title("Submit", for: .normal)
    .primaryStyle()
```

## Common Use Cases

### View Hierarchy Setup

```swift
import FlexUI

class ProfileViewController: UIViewController {
    private let avatarImageView = UIImageView()
        .flex
        .contentMode(.scaleAspectFill)
        .clipsToBounds(true)
        .cornerRadius(50)
    
    private let nameLabel = UILabel()
        .flex
        .font(.boldSystemFont(ofSize: 20))
        .textAlignment(.center)
    
    private let bioLabel = UILabel()
        .flex
        .font(.systemFont(ofSize: 14))
        .textColor(.secondaryLabel)
        .numberOfLines(0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}
```

### Dynamic Configuration

```swift
import FlexUI

func configureCell(_ cell: UITableViewCell, isSelected: Bool) {
    cell.textLabel?
        .flex
        .textColor(isSelected ? .systemBlue : .label)
        .font(isSelected ? .boldSystemFont(ofSize: 16) : .systemFont(ofSize: 16))
}
```

### Reusable Components

```swift
import FlexUI

class CustomButton: UIButton {
    convenience init(style: ButtonStyle) {
        self.init(type: .system)
        applyStyle(style)
    }
    
    private func applyStyle(_ style: ButtonStyle) {
        switch style {
        case .primary:
            flex
                .backgroundColor(.systemBlue)
                .cornerRadius(8)
                .setTitleColor(.white, for: .normal)
        case .secondary:
            flex
                .backgroundColor(.systemGray5)
                .cornerRadius(8)
                .setTitleColor(.label, for: .normal)
        }
    }
}
```

## Communication

- 🐛 **Found a bug?** [Open an issue](https://github.com/space-code/flex-ui/issues/new)
- 💡 **Have a feature request?** [Open an issue](https://github.com/space-code/flex-ui/issues/new)
- ❓ **Questions?** [Start a discussion](https://github.com/space-code/flex-ui/discussions)
- 🤝 **Want to contribute?** Submit a pull request

## Contributing

We love contributions! Please feel free to help out with this project. If you see something that could be made better or want a new feature, open up an issue or send a Pull Request.

### Development Setup

Bootstrap the development environment:

```bash
mise intall
```

## Author

**Nikita Vasilev**
- Email: nv3212@gmail.com
- GitHub: [@ns-vasilev](https://github.com/ns-vasilev)

## License

FlexUI is released under the MIT license. See [LICENSE](https://github.com/space-code/flex-ui/blob/main/LICENSE) for details.

---

<div align="center">

**[⬆ back to top](#flex-ui)**

Made with ❤️ by [space-code](https://github.com/space-code)

</div>