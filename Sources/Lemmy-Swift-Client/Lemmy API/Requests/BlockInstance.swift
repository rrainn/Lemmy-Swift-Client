import Foundation

public struct BlockInstanceRequest: APIRequest {
	public typealias Response = BlockInstanceResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/site/block"

	public let instance_id: InstanceId?
	public let block: Bool?

	public init(
		instance_id: InstanceId? = nil,
		block: Bool? = nil
	) {
		self.instance_id = instance_id
		self.block = block
	}
}

public struct BlockInstanceResponse: APIResponse {
	public let blocked: Bool?

	public init(
		blocked: Bool? = nil
	) {
		self.blocked = blocked
	}
}
