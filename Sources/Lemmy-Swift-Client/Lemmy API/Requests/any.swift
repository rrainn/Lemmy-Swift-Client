
public struct SuccessResponse: APIResponse {
	public let success: Bool?

	public init(
		success: Bool? = nil
	) {
		self.success = success
	}
}
