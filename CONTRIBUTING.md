# Contributing to FlexUI

First off, thank you for considering contributing to FlexUI! It's people like you that make FlexUI such a great tool.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
  - [Development Setup](#development-setup)
  - [Project Structure](#project-structure)
- [How Can I Contribute?](#how-can-i-contribute)
  - [Reporting Bugs](#reporting-bugs)
  - [Suggesting Features](#suggesting-features)
  - [Improving Documentation](#improving-documentation)
  - [Submitting Code](#submitting-code)
- [Development Workflow](#development-workflow)
  - [Branching Strategy](#branching-strategy)
  - [Commit Guidelines](#commit-guidelines)
  - [Pull Request Process](#pull-request-process)
- [Coding Standards](#coding-standards)
  - [Swift Style Guide](#swift-style-guide)
  - [Code Quality](#code-quality)
  - [Testing Requirements](#testing-requirements)
- [Community](#community)

## Code of Conduct

This project and everyone participating in it is governed by our Code of Conduct. By participating, you are expected to uphold this code. Please report unacceptable behavior to nv3212@gmail.com.

See [CODE_OF_CONDUCT.md](https://github.com/space-code/flex-ui/blob/main/CODE_OF_CONDUCT.md) for details.

## Getting Started

### Development Setup

1. **Fork the repository**
   ```bash
   # Click the "Fork" button on GitHub
   ```

2. **Clone your fork**
   ```bash
   git clone https://github.com/YOUR_USERNAME/flex-ui.git
   cd flex-ui
   ```

3. **Set up the development environment**
   ```bash
   # Bootstrap the project
   make bootstrap
   ```

4. **Create a feature branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

5. **Open the project in Xcode**
   ```bash
   open Package.swift
   ```

## How Can I Contribute?

### Reporting Bugs

Before creating a bug report, please check the [existing issues](https://github.com/space-code/flex-ui/issues) to avoid duplicates.

When creating a bug report, include:

- **Clear title** - Describe the issue concisely
- **Reproduction steps** - Detailed steps to reproduce the bug
- **Expected behavior** - What you expected to happen
- **Actual behavior** - What actually happened
- **Environment** - iOS version, Xcode version, Swift version
- **Code samples** - Minimal reproducible example
- **Error messages** - Complete error output if applicable

**Example:**
```markdown
**Title:** Chainable configuration breaks with custom UIView subclass

**Steps to reproduce:**
1. Create custom UIView subclass
2. Add .flex configuration chain
3. Attempt to set backgroundColor

**Expected:** Background color should be set correctly
**Actual:** Compiler error about missing return type

**Environment:**
- iOS 16.0
- Xcode 16.0
- Swift 6.0

**Code:**
\`\`\`swift
class CustomView: UIView { }

let view = CustomView()
    .flex
    .backgroundColor(.red) // Error here
\`\`\`
```

### Suggesting Features

We love feature suggestions! When proposing a new feature, include:

- **Problem statement** - What problem does this solve?
- **Proposed solution** - How should it work?
- **Alternatives** - What alternatives did you consider?
- **Use cases** - Real-world scenarios
- **API design** - Example code showing usage
- **Breaking changes** - Will this break existing code?

**Example:**
```markdown
**Feature:** Add animation helper methods to FlexUI

**Problem:** Configuring view animations requires breaking the chain and using UIView.animate separately.

**Solution:** Add chainable animation methods to FlexUI protocol.

**API:**
\`\`\`swift
let view = UIView()
    .flex
    .backgroundColor(.blue)
    .animate(duration: 0.3) { view in
        view.flex
            .alpha(0.5)
            .transform(CGAffineTransform(scaleX: 1.2, y: 1.2))
    }
\`\`\`

**Use case:** Creating animated UI without breaking the fluent configuration chain.
```

### Improving Documentation

Documentation improvements are always welcome:

- **Code comments** - Add/improve inline documentation
- **DocC documentation** - Enhance documentation articles
- **README** - Fix typos, add examples
- **Guides** - Write tutorials or how-to guides
- **API documentation** - Document public APIs

### Submitting Code

1. **Check existing work** - Look for related issues or PRs
2. **Discuss major changes** - Open an issue for large features
3. **Follow coding standards** - See [Coding Standards](#coding-standards)
4. **Write tests** - All code changes require tests
5. **Update documentation** - Keep docs in sync with code
6. **Create a pull request** - Use clear description

## Development Workflow

### Branching Strategy

We use a simplified branching model:

- **`main`** - Main development branch (all PRs target this)
- **`feature/*`** - New features
- **`fix/*`** - Bug fixes
- **`docs/*`** - Documentation updates
- **`refactor/*`** - Code refactoring
- **`test/*`** - Test improvements

**Branch naming examples:**
```bash
feature/animation-helpers
fix/chaining-with-custom-views
docs/update-extension-guide
refactor/simplify-flex-protocol
test/add-uitableview-tests
```

### Commit Guidelines

We use [Conventional Commits](https://www.conventionalcommits.org/) for clear, structured commit history.

**Format:**
```
<type>(<scope>): <subject>

<body>

<footer>
```

**Types:**
- `feat` - New feature
- `fix` - Bug fix
- `docs` - Documentation changes
- `style` - Code style (formatting, no logic changes)
- `refactor` - Code refactoring
- `test` - Adding or updating tests
- `chore` - Maintenance tasks
- `perf` - Performance improvements

**Scopes:**
- `core` - Core FlexUI protocol
- `extensions` - UIKit component extensions
- `ui` - UI components (UILabel, UIButton, etc.)
- `utilities` - Helper utilities
- `deps` - Dependencies

**Examples:**
```bash
feat(extensions): add UIStackView configuration methods

Implement chainable configuration methods for UIStackView including
axis, alignment, distribution, and spacing properties.

Closes #23

---

fix(core): correct return type inference for custom views

Fixed issue where custom UIView subclasses lost type information
in chaining. Now properly preserves the concrete type through
the entire chain.

Fixes #45

---

docs(readme): add custom extension examples

Add practical examples showing how to create custom FlexUI
extensions for project-specific styling needs.

---

test(extensions): add UITextField configuration tests

Add comprehensive tests for UITextField extensions including:
- Text and placeholder configuration
- Keyboard and input settings
- Border and styling properties
```

**Commit message rules:**
- Use imperative mood ("add" not "added")
- Don't capitalize first letter
- No period at the end
- Keep subject line under 72 characters
- Separate subject from body with blank line
- Reference issues in footer

### Pull Request Process

1. **Update your branch**
   ```bash
   git checkout main
   git pull upstream main
   git checkout feature/your-feature
   git rebase main
   ```

2. **Run tests and checks**
   ```bash
   # Run all tests
   swift test
   
   # Check test coverage
   swift test --enable-code-coverage
   ```

3. **Push to your fork**
   ```bash
   git push origin feature/your-feature
   ```

4. **Create pull request**
   - Target the `main` branch
   - Provide clear description
   - Link related issues
   - Include examples if applicable
   - Request review from maintainers

5. **Review process**
   - Address review comments
   - Keep PR up to date with main
   - Squash commits if requested
   - Wait for CI to pass

6. **After merge**
   ```bash
   # Clean up local branch
   git checkout main
   git pull upstream main
   git branch -d feature/your-feature
   
   # Clean up remote branch
   git push origin --delete feature/your-feature
   ```

## Coding Standards

### Swift Style Guide

We follow the [Swift API Design Guidelines](https://swift.org/documentation/api-design-guidelines/) and [Ray Wenderlich Swift Style Guide](https://github.com/raywenderlich/swift-style-guide).

**Key points:**

1. **Naming**
   ```swift
   // ✅ Good
   func backgroundColor(_ color: UIColor) -> Self
   let cornerRadius: CGFloat
   
   // ❌ Bad
   func setBG(_ c: UIColor) -> Self
   let rad: CGFloat
   ```

2. **Protocols**
   ```swift
   // ✅ Good - Use descriptive protocol names
   public protocol FlexUIConfigurable {
       associatedtype Component
       var component: Component { get }
   }
   
   // ❌ Bad
   protocol Config { }
   ```

3. **Access Control**
   ```swift
   // ✅ Good - Explicit access control
   public struct FlexUI<Component> {
       public let component: Component
       
       public init(component: Component) {
           self.component = component
       }
       
       @discardableResult
       @MainActor
       public func backgroundColor(_ color: UIColor) -> Self where Component: UIView {
           component.backgroundColor = color
           return self
       }
   }
   ```

4. **Documentation**
   ```swift
   /// Sets the background color of the view.
   ///
   /// This method allows chainable configuration of the view's background color
   /// while maintaining type safety.
   ///
   /// - Parameter color: The color to set as background
   /// - Returns: Self for method chaining
   ///
   /// - Example:
   /// ```swift
   /// let view = UIView()
   ///     .flex
   ///     .backgroundColor(.systemBlue)
   ///     .cornerRadius(8)
   /// ```
   @discardableResult
   @MainActor
   public func backgroundColor(_ color: UIColor) -> Self where Component: UIView {
       component.backgroundColor = color
       return self
   }
   ```

### Code Quality

- **No force unwrapping** - Use optional binding or guards
- **No force casting** - Use conditional casting
- **No magic numbers** - Use named constants
- **Single responsibility** - One class, one purpose
- **DRY principle** - Don't repeat yourself
- **Type safety** - Leverage Swift's type system

**Example:**
```swift
// ✅ Good
private enum ViewConstants {
    static let defaultCornerRadius: CGFloat = 8.0
    static let defaultAlpha: CGFloat = 1.0
}

@discardableResult
@MainActor
public func cornerRadius(_ radius: CGFloat = ViewConstants.defaultCornerRadius) -> Self where Component: UIView {
    component.layer.cornerRadius = radius
    return self
}

// ❌ Bad
func setRadius(_ r: CGFloat) -> Self {
    component.layer.cornerRadius = r == 0 ? 8 : r  // Magic number
    return self
}
```

### Testing Requirements

All code changes must include tests:

1. **Unit tests** - Test individual components
2. **Integration tests** - Test component interactions
3. **Edge cases** - Test boundary conditions
4. **Type safety** - Test generic constraints
5. **Chaining** - Test method chaining behavior

**Coverage requirements:**
- New code: minimum 80% coverage
- Modified code: maintain or improve existing coverage
- Critical paths: 100% coverage

**Test structure:**
```swift
import XCTest
@testable import FlexUI

final class FlexUIUIViewTests: XCTestCase {
    var sut: UIView!
    
    override func setUp() {
        super.setUp()
        sut = UIView()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    // MARK: - Configuration Tests
    
    func testBackgroundColor_SetsColorCorrectly() {
        // Given
        let expectedColor = UIColor.red
        
        // When
        let result = sut.flex.backgroundColor(expectedColor)
        
        // Then
        XCTAssertEqual(sut.backgroundColor, expectedColor)
        XCTAssertTrue(result.component === sut)
    }
    
    // MARK: - Chaining Tests
    
    func testChaining_MultipleConfigurations_AppliesAllChanges() {
        // Given
        let expectedColor = UIColor.blue
        let expectedAlpha: CGFloat = 0.5
        let expectedRadius: CGFloat = 10
        
        // When
        sut.flex
            .backgroundColor(expectedColor)
            .alpha(expectedAlpha)
            .cornerRadius(expectedRadius)
        
        // Then
        XCTAssertEqual(sut.backgroundColor, expectedColor)
        XCTAssertEqual(sut.alpha, expectedAlpha)
        XCTAssertEqual(sut.layer.cornerRadius, expectedRadius)
    }
    
    // MARK: - Type Safety Tests
    
    func testTypeSafety_PreservesConcreteType() {
        // Given
        let button = UIButton()
        
        // When
        let result = button.flex.backgroundColor(.red)
        
        // Then
        XCTAssertTrue(result.component is UIButton)
    }
}
```

## Community

- **Discussions** - Join [GitHub Discussions](https://github.com/space-code/flex-ui/discussions)
- **Issues** - Track [open issues](https://github.com/space-code/flex-ui/issues)
- **Pull Requests** - Review [open PRs](https://github.com/space-code/flex-ui/pulls)

## Recognition

Contributors are recognized in:
- GitHub contributors page
- Release notes
- Project README (for significant contributions)

## Questions?

- Check [existing issues](https://github.com/space-code/flex-ui/issues)
- Search [discussions](https://github.com/space-code/flex-ui/discussions)
- Ask in [Q&A discussions](https://github.com/space-code/flex-ui/discussions/categories/q-a)
- Email the maintainer: nv3212@gmail.com

---

Thank you for contributing to FlexUI! 🎉

Your efforts help make this project better for everyone.