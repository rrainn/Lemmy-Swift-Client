import Foundation

public struct GetPostRequest: APIRequest {
	public typealias Response = GetPostResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/post"

	public let id: PostId?
	public let commentId: CommentId?

	public init(
		id: PostId? = nil,
		commentId: CommentId? = nil
	) {
		self.id = id
		self.commentId = commentId
	}
}

public struct GetPostResponse: APIResponse {
	public let postView: PostView
	public let communityView: CommunityView
	public let moderators: [CommunityModeratorView]
	public let crossPosts: [PostView]

	public init(
		postView: PostView,
		communityView: CommunityView,
		moderators: [CommunityModeratorView],
		crossPosts: [PostView]
	) {
		self.postView = postView
		self.communityView = communityView
		self.moderators = moderators
		self.crossPosts = crossPosts
	}
}
