# homebrew-playwright

A Homebrew tap for [Playwright](https://playwright.dev/), an automated browser testing framework for the modern web. Use this tap to easily install Playwright on macOS and Linux using Homebrew.

## Installation

### Recommended Method (Direct Install)

The easiest way to install Playwright is to use its fully qualified name. This automatically adds the tap and trusts the formula.

```bash
brew install coetzeer/playwright/playwright
```

### Alternative Method (Tap First)

You can also tap the repository first and then install the formula.

1.  **Tap the repository:**
    ```bash
    brew tap coetzeer/playwright
    ```

2.  **Trust the Playwright formula:**
    For security, it's recommended to trust only the specific formula you intend to install:
    ```bash
    brew trust --formula coetzeer/playwright/playwright
    ```

3.  **Install Playwright:**
    ```bash
    brew install coetzeer/playwright/playwright
    ```

## Updating

Rebuild the bottle and check the latest version against upstream:

```bash
brew update
brew upgrade playwright
```

## License

Formula license: Apache-2.0 (matching the upstream npm package).