import Foundation

public struct MyUserInfo: Codable, Hashable {
	public let local_user_view: LocalUserView
	public let follows: [CommunityFollowerView]
	public let moderates: [CommunityModeratorView]
	public let community_blocks: [CommunityBlockView]
	public let person_blocks: [PersonBlockView]
	public let discussion_languages: [LanguageId]

	public init(
		local_user_view: LocalUserView,
		follows: [CommunityFollowerView],
		moderates: [CommunityModeratorView],
		community_blocks: [CommunityBlockView],
		person_blocks: [PersonBlockView],
		discussion_languages: [LanguageId]
	) {
		self.local_user_view = local_user_view
		self.follows = follows
		self.moderates = moderates
		self.community_blocks = community_blocks
		self.person_blocks = person_blocks
		self.discussion_languages = discussion_languages
	}
}
