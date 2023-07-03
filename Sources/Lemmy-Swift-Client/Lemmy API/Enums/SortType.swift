import Foundation

/// Different post sort types used in lemmy.
public enum SortType: String, Codable, CustomStringConvertible, CaseIterable {
	/// Posts sorted by hot, but bumped by new comments up to 2 days.
	case active = "Active"
	/// Posts sorted by a decaying rank.
	case hot = "Hot"
	/// Posts sorted by the published time.
	case new = "New"
	/// Posts sorted by the published time ascending
	case old = "Old"
	/// The top posts for this last day.
	case topDay = "TopDay"
	/// The top posts for this last week.
	case topWeek = "TopWeek"
	/// The top posts for this last month.
	case topMonth = "TopMonth"
	/// The top posts for this last year.
	case topYear = "TopYear"
	/// The top posts of all time.
	case topAll = "TopAll"
	/// Posts sorted by the most comments.
	case mostComments = "MostComments"
	/// Posts sorted by the newest comments, with no necrobumping. IE a forum sort.
	case newComments = "NewComments"
	/// The top posts for this last hour.
	case topHour = "TopHour"
	/// The top posts for this last six hour.
	case topSixHour = "TopSixHour"
	/// The top posts for this last six hour.
	case topTwelveHour = "TopTwelveHour"

	public var description: String {
		return rawValue
	}
}
