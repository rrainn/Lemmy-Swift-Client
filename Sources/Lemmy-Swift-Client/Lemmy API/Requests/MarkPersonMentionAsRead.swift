import Foundation

public struct MarkPersonMentionAsReadRequest: APIRequest {
	public typealias Response = PersonMentionResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/mention/mark_as_read"

	public let personMentionId: PersonMentionId
	public let read: Bool

	public init(
		personMentionId: PersonMentionId,
		read: Bool
	) {
		self.personMentionId = personMentionId
		self.read = read
	}
}

public struct PersonMentionResponse: APIResponse {
	public let personMentionView: PersonMentionView

	public init(
		personMentionView: PersonMentionView
	) {
		self.personMentionView = personMentionView
	}
}
