import Foundation

public struct Instance: Codable, Identifiable, Hashable {
	public let id: InstanceId
	public let domain: String
	public let published: String
	public let updated: String?
	public let software: String?
	public let version: String?

	public init(
		id: InstanceId,
		domain: String,
		published: String,
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
