import Foundation

public struct GetPostRequest: APIRequest {
	public typealias Response = GetPostResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/post"

	public let id: PostId?
	public let comment_id: CommentId?

	public init(
		id: PostId? = nil,
		comment_id: CommentId? = nil
	) {
		self.id = id
		self.comment_id = comment_id
	}
}

public struct GetPostResponse: APIResponse {
	public let post_view: PostView
	public let community_view: CommunityView
	public let moderators: [CommunityModeratorView]
	public let cross_posts: [PostView]

	public init(
		post_view: PostView,
		community_view: CommunityView,
		moderators: [CommunityModeratorView],
		cross_posts: [PostView]
	) {
		self.post_view = post_view
		self.community_view = community_view
		self.moderators = moderators
		self.cross_posts = cross_posts
	}
}
