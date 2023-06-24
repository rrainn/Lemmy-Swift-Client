//
//  GetModlog.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct GetModlogRequest: APIRequest {
	public typealias Response = GetModlogResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/modlog"

	public let auth: String?
	public let community_id: Int?
	public let limit: Int?
	public let mod_person_id: Int?
	public let other_person_id: Int?
	public let page: Int?
	public let type_: ModlogActionType

	public init(auth: String? = nil, community_id: Int? = nil, limit: Int? = nil, mod_person_id: Int? = nil, other_person_id: Int? = nil, page: Int? = nil, type_: ModlogActionType) {
		self.auth = auth
		self.community_id = community_id
		self.limit = limit
		self.mod_person_id = mod_person_id
		self.other_person_id = other_person_id
		self.page = page
		self.type_ = type_
	}
}
public struct GetModlogResponse: APIResponse {
	public let added: [ModAddView]
	public let added_to_community: [ModAddCommunityView]
	public let admin_purged_comments: [AdminPurgeCommentView]
	public let admin_purged_communities: [AdminPurgeCommunityView]
	public let admin_purged_persons: [AdminPurgePersonView]
	public let admin_purged_posts: [AdminPurgePostView]
	public let banned: [ModBanView]
	public let banned_from_community: [ModBanFromCommunityView]
	public let featured_posts: [ModFeaturePostView]
	public let locked_posts: [ModLockPostView]
	public let removed_comments: [ModRemoveCommentView]
	public let removed_communities: [ModRemoveCommunityView]
	public let removed_posts: [ModRemovePostView]
	public let transferred_to_community: [ModTransferCommunityView]

	public init(added: [ModAddView], added_to_community: [ModAddCommunityView], admin_purged_comments: [AdminPurgeCommentView], admin_purged_communities: [AdminPurgeCommunityView], admin_purged_persons: [AdminPurgePersonView], admin_purged_posts: [AdminPurgePostView], banned: [ModBanView], banned_from_community: [ModBanFromCommunityView], featured_posts: [ModFeaturePostView], locked_posts: [ModLockPostView], removed_comments: [ModRemoveCommentView], removed_communities: [ModRemoveCommunityView], removed_posts: [ModRemovePostView], transferred_to_community: [ModTransferCommunityView]) {
		self.added = added
		self.added_to_community = added_to_community
		self.admin_purged_comments = admin_purged_comments
		self.admin_purged_communities = admin_purged_communities
		self.admin_purged_persons = admin_purged_persons
		self.admin_purged_posts = admin_purged_posts
		self.banned = banned
		self.banned_from_community = banned_from_community
		self.featured_posts = featured_posts
		self.locked_posts = locked_posts
		self.removed_comments = removed_comments
		self.removed_communities = removed_communities
		self.removed_posts = removed_posts
		self.transferred_to_community = transferred_to_community
	}
}
