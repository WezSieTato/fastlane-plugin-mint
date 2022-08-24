# mint plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-mint)
[![codecov](https://codecov.io/gh/WezSieTato/fastlane-plugin-mint/branch/master/graph/badge.svg)](https://codecov.io/gh/WezSieTato/fastlane-plugin-mint)

## Getting Started

This project is a [_fastlane_](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-mint`, add it to your project by running:

```bash
fastlane add_plugin mint
```

## About mint

Run [Mint](https://github.com/yonaskolb/Mint) with fastlane! Mint is a package manager that installs and runs Swift command line tool packages.

Available action in this plugin:
 
 * __install_mint__ - Call homebrew to install mint
 * __mint_bootstrap__ - Installs all the packages in your [Mintfile](https://github.com/yonaskolb/Mint#mintfile), by default, without linking them globally
 * __mint_which__ - Return the path to an installed package executable
## Example

Check out the [example `Fastfile`](fastlane/Fastfile) to see how to use this plugin. Try it by cloning the repo, running `fastlane install_plugins` and `bundle exec fastlane test`.

## Run tests for this plugin

To run both the tests, and code style validation, run

```
rake
```

To automatically fix many of the styling issues, use
```
rubocop -a
```

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://docs.fastlane.tools/plugins/plugins-troubleshooting/) guide.

## Using _fastlane_ Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://docs.fastlane.tools/plugins/create-plugin/).

## About _fastlane_

_fastlane_ is the easiest way to automate beta deployments and releases for your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
