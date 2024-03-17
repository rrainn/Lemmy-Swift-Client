import Foundation

public struct Language: Codable, Identifiable, Hashable {
	public let id: LanguageId?
	public let code: String?
	public let name: String?

	public init(
		id: LanguageId? = nil,
		code: String? = nil,
		name: String? = nil
	) {
		self.id = id
		self.code = code
		self.name = name
	}
}
