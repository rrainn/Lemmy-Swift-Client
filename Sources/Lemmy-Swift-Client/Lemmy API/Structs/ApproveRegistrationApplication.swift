import Foundation

public struct ApproveRegistrationApplication: Codable, Identifiable, Hashable {
	public let id: Int?
	public let approve: Bool?
	public let deny_reason: String?

	public init(
		id: Int? = nil,
		approve: Bool? = nil,
		deny_reason: String? = nil
	) {
		self.id = id
		self.approve = approve
		self.deny_reason = deny_reason
	}
}
