import Foundation

public struct SiteView: Codable {
	public let counts: SiteAggregates
	public let local_site: LocalSite
	public let local_site_rate_limit: LocalSiteRateLimit
	public let site: Site
	public let taglines: [Tagline]?

	public init(
		counts: SiteAggregates,
		local_site: LocalSite,
		local_site_rate_limit: LocalSiteRateLimit,
		site: Site,
		taglines: [Tagline]? = nil
	) {
		self.counts = counts
		self.local_site = local_site
		self.local_site_rate_limit = local_site_rate_limit
		self.site = site
		self.taglines = taglines
	}
}
