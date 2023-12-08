import Foundation

public struct ApproveRegistrationApplication: Codable, Identifiable, Hashable {
	public let id: Int
	public let approve: Bool
	public let denyReason: String?

	public init(
		id: Int,
		approve: Bool,
		denyReason: String? = nil
	) {
		self.id = id
		self.approve = approve
		self.denyReason = denyReason
	}
}
