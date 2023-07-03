import Foundation

public struct CaptchaResponse: Codable, Hashable {
	/// A Base64 encoded png.
	public let png: String
	/// A UUID to match the one given on request.
	public let uuid: String
	/// A Base64 encoded wav file.
	public let wav: String?

	public init(png: String, uuid: String, wav: String? = nil) {
		self.png = png
		self.uuid = uuid
		self.wav = wav
	}
}
