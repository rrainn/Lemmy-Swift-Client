import Foundation

public struct ReadableFederationState: Codable, Hashable {
	public let instanceId: InstanceId
	public let lastSuccessfulId: ActivityId?
	public let lastSuccessfulPublishedTime: String?
	public let failCount: Int
	public let lastRetry: String?
	public let nextRetry: String?

	public init(
		instanceId: InstanceId,
		lastSuccessfulId: ActivityId? = nil,
		lastSuccessfulPublishedTime: String? = nil,
		failCount: Int,
		lastRetry: String? = nil,
		nextRetry: String? = nil
	) {
		self.instanceId = instanceId
		self.lastSuccessfulId = lastSuccessfulId
		self.lastSuccessfulPublishedTime = lastSuccessfulPublishedTime
		self.failCount = failCount
		self.lastRetry = lastRetry
		self.nextRetry = nextRetry
	}
}
