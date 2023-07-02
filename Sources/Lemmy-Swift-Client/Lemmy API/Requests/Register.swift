import Foundation

public struct RegisterRequest: APIRequest {
	public typealias Response = LoginResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/register"

	public let answer: String?
	public let captcha_answer: String?
	public let captcha_uuid: String?
	public let email: String?
	public let honeypot: String?
	public let password: String
	public let password_verify: String
	public let show_nsfw: Bool
	public let username: String

	public init(
		answer: String? = nil,
		captcha_answer: String? = nil,
		captcha_uuid: String? = nil,
		email: String? = nil,
		honeypot: String? = nil,
		password: String,
		password_verify: String,
		show_nsfw: Bool,
		username: String
	) {
		self.answer = answer
		self.captcha_answer = captcha_answer
		self.captcha_uuid = captcha_uuid
		self.email = email
		self.honeypot = honeypot
		self.password = password
		self.password_verify = password_verify
		self.show_nsfw = show_nsfw
		self.username = username
	}
}
