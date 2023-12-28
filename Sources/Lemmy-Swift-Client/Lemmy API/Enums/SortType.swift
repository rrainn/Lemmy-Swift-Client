import Foundation

public enum SortType: String, Codable, CustomStringConvertible, CaseIterable {
	case active = "Active"
	case hot = "Hot"
	case new = "New"
	case old = "Old"
	case topDay = "TopDay"
	case topWeek = "TopWeek"
	case topMonth = "TopMonth"
	case topYear = "TopYear"
	case topAll = "TopAll"
	case mostComments = "MostComments"
	case newComments = "NewComments"
	case topHour = "TopHour"
	case topSixHour = "TopSixHour"
	case topTwelveHour = "TopTwelveHour"
	case topThreeMonths = "TopThreeMonths"
	case topSixMonths = "TopSixMonths"
	case topNineMonths = "TopNineMonths"
	case controversial = "Controversial"
	case scaled = "Scaled"

	public var description: String {
		return rawValue
	}
}
