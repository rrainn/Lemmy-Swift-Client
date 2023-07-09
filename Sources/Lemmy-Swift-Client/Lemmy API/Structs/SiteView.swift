import Foundation

public struct SiteView: Codable, Hashable {
	public let site: Site
	public let local_site: LocalSite
	public let local_site_rate_limit: LocalSiteRateLimit
	public let counts: SiteAggregates

	public init(
		site: Site,
		local_site: LocalSite,
		local_site_rate_limit: LocalSiteRateLimit,
		counts: SiteAggregates
	) {
		self.site = site
		self.local_site = local_site
		self.local_site_rate_limit = local_site_rate_limit
		self.counts = counts
	}
}
