import Foundation

public struct RegisterRequest: APIRequest {
	public typealias Response = LoginResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/register"

	public let username: String?
	public let password: String?
	public let password_verify: String?
	public let show_nsfw: Bool?
	public let email: String?
	public let captcha_uuid: String?
	public let captcha_answer: String?
	public let honeypot: String?
	public let answer: String?

	public init(
		username: String? = nil,
		password: String? = nil,
		password_verify: String? = nil,
		show_nsfw: Bool? = nil,
		email: String? = nil,
		captcha_uuid: String? = nil,
		captcha_answer: String? = nil,
		honeypot: String? = nil,
		answer: String? = nil
	) {
		self.username = username
		self.password = password
		self.password_verify = password_verify
		self.show_nsfw = show_nsfw
		self.email = email
		self.captcha_uuid = captcha_uuid
		self.captcha_answer = captcha_answer
		self.honeypot = honeypot
		self.answer = answer
	}
}

public struct LoginResponse: APIResponse {
	public let jwt: String?
	public let registration_created: Bool?
	public let verify_email_sent: Bool?

	public init(
		jwt: String? = nil,
		registration_created: Bool? = nil,
		verify_email_sent: Bool? = nil
	) {
		self.jwt = jwt
		self.registration_created = registration_created
		self.verify_email_sent = verify_email_sent
	}
}
