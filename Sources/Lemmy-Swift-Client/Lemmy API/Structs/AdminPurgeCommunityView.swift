import Foundation

public struct AdminPurgeCommunityView: Codable, Hashable {
  public let admin: Person?
  public let admin_purge_community: AdminPurgeCommunity

  public init(admin: Person? = nil, admin_purge_community: AdminPurgeCommunity) {
    self.admin = admin
    self.admin_purge_community = admin_purge_community
  }
}
