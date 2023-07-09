import Foundation

public struct MarkPersonMentionAsReadRequest: APIRequest {
	public typealias Response = PersonMentionResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/mention/mark_as_read"

	public let person_mention_id: PersonMentionId
	public let read: Bool
	public let auth: String

	public init(
		person_mention_id: PersonMentionId,
		read: Bool,
		auth: String
	) {
		self.person_mention_id = person_mention_id
		self.read = read
		self.auth = auth
	}
}

public struct PersonMentionResponse: APIResponse {
	public let person_mention_view: PersonMentionView

	public init(
		person_mention_view: PersonMentionView
	) {
		self.person_mention_view = person_mention_view
	}
}
