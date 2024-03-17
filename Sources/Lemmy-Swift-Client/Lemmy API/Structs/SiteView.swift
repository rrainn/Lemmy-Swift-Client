import Foundation

public struct SiteView: Codable, Hashable {
	public let site: Site?
	public let local_site: LocalSite?
	public let local_site_rate_limit: LocalSiteRateLimit?
	public let counts: SiteAggregates?

	public init(
		site: Site? = nil,
		local_site: LocalSite? = nil,
		local_site_rate_limit: LocalSiteRateLimit? = nil,
		counts: SiteAggregates? = nil
	) {
		self.site = site
		self.local_site = local_site
		self.local_site_rate_limit = local_site_rate_limit
		self.counts = counts
	}
}
