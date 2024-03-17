import Foundation

public struct MyUserInfo: Codable, Hashable {
	public let local_user_view: LocalUserView?
	public let follows: [CommunityFollowerView]?
	public let moderates: [CommunityModeratorView]?
	public let community_blocks: [CommunityBlockView]?
	public let instance_blocks: [InstanceBlockView]?
	public let person_blocks: [PersonBlockView]?
	public let discussion_languages: [LanguageId]?

	public init(
		local_user_view: LocalUserView? = nil,
		follows: [CommunityFollowerView]? = nil,
		moderates: [CommunityModeratorView]? = nil,
		community_blocks: [CommunityBlockView]? = nil,
		instance_blocks: [InstanceBlockView]? = nil,
		person_blocks: [PersonBlockView]? = nil,
		discussion_languages: [LanguageId]? = nil
	) {
		self.local_user_view = local_user_view
		self.follows = follows
		self.moderates = moderates
		self.community_blocks = community_blocks
		self.instance_blocks = instance_blocks
		self.person_blocks = person_blocks
		self.discussion_languages = discussion_languages
	}
}
