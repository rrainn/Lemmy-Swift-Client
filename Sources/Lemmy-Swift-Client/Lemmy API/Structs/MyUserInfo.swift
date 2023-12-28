import Foundation

public struct MyUserInfo: Codable, Hashable {
	public let localUserView: LocalUserView
	public let follows: [CommunityFollowerView]
	public let moderates: [CommunityModeratorView]
	public let communityBlocks: [CommunityBlockView]
	public let instanceBlocks: [InstanceBlockView]
	public let personBlocks: [PersonBlockView]
	public let discussionLanguages: [LanguageId]

	public init(
		localUserView: LocalUserView,
		follows: [CommunityFollowerView],
		moderates: [CommunityModeratorView],
		communityBlocks: [CommunityBlockView],
		instanceBlocks: [InstanceBlockView],
		personBlocks: [PersonBlockView],
		discussionLanguages: [LanguageId]
	) {
		self.localUserView = localUserView
		self.follows = follows
		self.moderates = moderates
		self.communityBlocks = communityBlocks
		self.instanceBlocks = instanceBlocks
		self.personBlocks = personBlocks
		self.discussionLanguages = discussionLanguages
	}
}
