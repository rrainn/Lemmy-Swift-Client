import Foundation

public struct ResolveObjectRequest: APIRequest {
	public typealias Response = ResolveObjectResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/resolve_object"

	public let q: String
	public let auth: String

	public init(
		q: String,
		auth: String
	) {
		self.q = q
		self.auth = auth
	}
}

public struct ResolveObjectResponse: APIResponse {
	public let comment: CommentView?
	public let post: PostView?
	public let community: CommunityView?
	public let person: PersonView?

	public init(
		comment: CommentView? = nil,
		post: PostView? = nil,
		community: CommunityView? = nil,
		person: PersonView? = nil
	) {
		self.comment = comment
		self.post = post
		self.community = community
		self.person = person
	}
}
