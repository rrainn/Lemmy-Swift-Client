import Foundation

public struct GetCaptchaResponse: Codable, Hashable {
	public let ok: CaptchaResponse?

	public init(
		ok: CaptchaResponse? = nil
	) {
		self.ok = ok
	}
}
