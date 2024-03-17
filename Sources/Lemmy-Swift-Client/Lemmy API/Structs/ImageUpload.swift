import Foundation

public struct ImageUpload: Codable, Hashable {
	public let local_user_id: LocalUserId?
	public let pictrs_alias: String?
	public let pictrs_delete_token: String?
	public let published: String?

	public init(
		local_user_id: LocalUserId? = nil,
		pictrs_alias: String? = nil,
		pictrs_delete_token: String? = nil,
		published: String? = nil
	) {
		self.local_user_id = local_user_id
		self.pictrs_alias = pictrs_alias
		self.pictrs_delete_token = pictrs_delete_token
		self.published = published
	}
}
