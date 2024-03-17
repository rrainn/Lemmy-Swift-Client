import Foundation

public struct ReadableFederationState: Codable, Hashable {
	public let instance_id: InstanceId
	public let last_successful_id: ActivityId?
	public let last_successful_published_time: String?
	public let fail_count: Int
	public let last_retry: String?
	public let next_retry: String?

	public init(
		instance_id: InstanceId,
		last_successful_id: ActivityId? = nil,
		last_successful_published_time: String? = nil,
		fail_count: Int,
		last_retry: String? = nil,
		next_retry: String? = nil
	) {
		self.instance_id = instance_id
		self.last_successful_id = last_successful_id
		self.last_successful_published_time = last_successful_published_time
		self.fail_count = fail_count
		self.last_retry = last_retry
		self.next_retry = next_retry
	}
}
