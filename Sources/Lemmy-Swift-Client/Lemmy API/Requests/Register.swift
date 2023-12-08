import Foundation

public struct RegisterRequest: APIRequest {
	public typealias Response = LoginResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/register"

	public let username: String
	public let password: String
	public let passwordVerify: String
	public let showNsfw: Bool
	public let email: String?
	public let captchaUuid: String?
	public let captchaAnswer: String?
	public let honeypot: String?
	public let answer: String?

	public init(
		username: String,
		password: String,
		passwordVerify: String,
		showNsfw: Bool,
		email: String? = nil,
		captchaUuid: String? = nil,
		captchaAnswer: String? = nil,
		honeypot: String? = nil,
		answer: String? = nil
	) {
		self.username = username
		self.password = password
		self.passwordVerify = passwordVerify
		self.showNsfw = showNsfw
		self.email = email
		self.captchaUuid = captchaUuid
		self.captchaAnswer = captchaAnswer
		self.honeypot = honeypot
		self.answer = answer
	}
}

public struct LoginResponse: APIResponse {
	public let jwt: String?
	public let registrationCreated: Bool
	public let verifyEmailSent: Bool

	public init(
		jwt: String? = nil,
		registrationCreated: Bool,
		verifyEmailSent: Bool
	) {
		self.jwt = jwt
		self.registrationCreated = registrationCreated
		self.verifyEmailSent = verifyEmailSent
	}
}
