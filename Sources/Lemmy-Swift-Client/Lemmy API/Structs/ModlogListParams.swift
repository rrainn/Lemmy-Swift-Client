import Foundation

public struct ModlogListParams: Codable, Hashable {
	public let community_id: CommunityId?
	public let mod_person_id: PersonId?
	public let other_person_id: PersonId?
	public let post_id: PostId?
	public let comment_id: CommentId?
	public let page: Int?
	public let limit: Int?
	public let hide_modlog_names: Bool?

	public init(
		community_id: CommunityId? = nil,
		mod_person_id: PersonId? = nil,
		other_person_id: PersonId? = nil,
		post_id: PostId? = nil,
		comment_id: CommentId? = nil,
		page: Int? = nil,
		limit: Int? = nil,
		hide_modlog_names: Bool? = nil
	) {
		self.community_id = community_id
		self.mod_person_id = mod_person_id
		self.other_person_id = other_person_id
		self.post_id = post_id
		self.comment_id = comment_id
		self.page = page
		self.limit = limit
		self.hide_modlog_names = hide_modlog_names
	}
}
