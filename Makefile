lint:
	swiftlint

lint-fix:
	swiftlint --fix

format:
	swiftformat --lint .

format-fix:
	swiftformat .