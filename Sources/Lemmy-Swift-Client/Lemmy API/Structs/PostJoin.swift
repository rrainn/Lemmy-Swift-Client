import Foundation

public struct PostJoin: Codable, Hashable {
	public let post_id: PostId

	public init(
		post_id: PostId
	) {
		self.post_id = post_id
	}
}
