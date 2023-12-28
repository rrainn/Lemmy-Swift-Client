import Foundation

public struct BlockInstanceRequest: APIRequest {
	public typealias Response = BlockInstanceResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/site/block"

	public let instanceId: InstanceId
	public let block: Bool

	public init(
		instanceId: InstanceId,
		block: Bool
	) {
		self.instanceId = instanceId
		self.block = block
	}
}

public struct BlockInstanceResponse: APIResponse {
	public let blocked: Bool

	public init(
		blocked: Bool
	) {
		self.blocked = blocked
	}
}
