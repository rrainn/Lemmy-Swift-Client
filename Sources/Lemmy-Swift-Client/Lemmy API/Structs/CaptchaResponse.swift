import Foundation

public struct CaptchaResponse: Codable, Hashable {
	public let png: String?
	public let wav: String?
	public let uuid: String?

	public init(
		png: String? = nil,
		wav: String? = nil,
		uuid: String? = nil
	) {
		self.png = png
		self.wav = wav
		self.uuid = uuid
	}
}
