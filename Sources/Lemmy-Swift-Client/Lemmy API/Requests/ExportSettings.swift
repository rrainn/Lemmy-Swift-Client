public struct ExportSettingsRequest: APIRequest {
	public typealias Response = any

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/user/export_settings"
	
	public init() {}
}
