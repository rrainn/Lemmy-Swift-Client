public struct GetFederatedInstancesRequest: APIRequest {
	public typealias Response = GetFederatedInstancesResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/federated_instances"
	
	public init() {}
}

public struct GetFederatedInstancesResponse: APIResponse {
	public let federated_instances: FederatedInstances?

	public init(
		federated_instances: FederatedInstances? = nil
	) {
		self.federated_instances = federated_instances
	}
}
