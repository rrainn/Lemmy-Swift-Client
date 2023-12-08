import Foundation

public struct SiteView: Codable, Hashable {
	public let site: Site
	public let localSite: LocalSite
	public let localSiteRateLimit: LocalSiteRateLimit
	public let counts: SiteAggregates

	public init(
		site: Site,
		localSite: LocalSite,
		localSiteRateLimit: LocalSiteRateLimit,
		counts: SiteAggregates
	) {
		self.site = site
		self.localSite = localSite
		self.localSiteRateLimit = localSiteRateLimit
		self.counts = counts
	}
}
