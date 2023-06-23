lint:
	swiftlint

lint-fix:
	swiftlint --fix

format:
	swiftformat --dryrun --verbose .

format-fix:
	swiftformat .