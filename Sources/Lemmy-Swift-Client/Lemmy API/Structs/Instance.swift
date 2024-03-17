import Foundation

public struct Instance: Codable, Identifiable, Hashable {
	public let id: InstanceId?
	public let domain: String?
	public let published: String?
	public let updated: String?
	public let software: String?
	public let version: String?

	public init(
		id: InstanceId? = nil,
		domain: String? = nil,
		published: String? = nil,
		updated: String? = nil,
		software: String? = nil,
		version: String? = nil
	) {
		self.id = id
		self.domain = domain
		self.published = published
		self.updated = updated
		self.software = software
		self.version = version
	}
}
