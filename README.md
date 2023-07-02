# Lemmy-Swift-Client

A Swift client for [Lemmy](https://join-lemmy.org).

## Features

- Fully Swift type safe
- `async`/`await` compatible
- Supports [all Lemmy API endpoints](https://join-lemmy.org/api/classes/LemmyHttp.html)
- Uses Codable for easy JSON serialization/deserialization

## Installation

We use Swift Package Manager to make it easy to install and use the Lemmy Swift Client in your project.

```swift
dependencies: [
	.package(url: "https://github.com/rrainn/Lemmy-Swift-Client.git", .upToNextMajor(from: "1.0.0"))
]
```

## Usage

Below is an example of a basic usage example of how to use the Lemmy Swift Client.

```swift
import Lemmy_Swift_Client

if let url = URL(string: "https://eventfrontier.com/api/v3") {
	// Create an instance of the Lemmy API with the base URL of your Lemmy instance
	let api = LemmyAPI(baseUrl: url)

	// Create a SearchRequest object with the `q` parameter
	let request = SearchRequest(q: "Lemmy-Swift-Client")
	// Send the request to the Lemmy API
	if let response = try? await api.request(request) {
		print(response)
	} else {
		print("Error")
	}
}
```

Luckily this just scratches the surface of what you can do with the Lemmy Swift Client. For more information checkout our [documentation](https://rrainn.github.io/Lemmy-Swift-Client/documentation/lemmy_swift_client/).

## Resources

- [Documentation](https://rrainn.github.io/Lemmy-Swift-Client/documentation/lemmy_swift_client/)
- [Repository](https://github.com/rrainn/Lemmy-Swift-Client)
- [License](https://github.com/rrainn/Lemmy-Swift-Client/blob/main/LICENSE)

## License

Lemmy Swift Client is available under the MIT license. See the [LICENSE](https://github.com/rrainn/Lemmy-Swift-Client/blob/main/LICENSE).

## Code Formatting + Linting

This project uses [swiftformat](https://github.com/nicklockwood/SwiftFormat) for code formatting and linting.

Please make sure to lint your code before submitting a Pull Request.

If you do not have `swiftformat` installed, you can install it with [Homebrew](https://brew.sh):

```bash
brew install swiftformat
```

The repository provides simple `Makefile` targets to run either:

```bash
# Lint (will not apply changes)
make lint

# Lint and apply correct formatting
make lint-fix
```

## Maintainers

- [Charlie Fish](https://charlie.fish) ([Contact](https://charlie.fish/contact))
