//
//  CreateComment.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct CreateCommentRequest: APIRequest {
	public typealias Response = CommentResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/comment"

	public let auth: String
	public let content: String
	public let form_id: String?
	public let language_id: Int?
	public let parent_id: Int?
	public let post_id: Int
}
public struct CommentResponse: APIResponse {
	public let comment_view: CommentView
	public let form_id: String?
	public let recipient_ids: [Int]
}
