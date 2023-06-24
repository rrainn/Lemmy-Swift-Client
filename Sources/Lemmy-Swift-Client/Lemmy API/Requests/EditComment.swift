//
//  EditComment.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct EditCommentRequest: APIRequest {
	public typealias Response = CommentResponse
	
	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/comment"
	
	public let auth: String
	public let comment_id: Int
	public let content: String?
	/// "Distinguishes" a comment, or speak officially. Only doable by community mods or admins.
	public let distinguished: Bool?
	public let form_id: String?
	public let language_id: Int?

	public init(auth: String, comment_id: Int, content: String? = nil, distinguished: Bool? = nil, form_id: String? = nil, language_id: Int? = nil) {
		self.auth = auth
		self.comment_id = comment_id
		self.content = content
		self.distinguished = distinguished
		self.form_id = form_id
		self.language_id = language_id
	}
}
