//
//  LocalSite.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct LocalSite: Codable {
	public let actor_name_max_length: Int
	public let application_email_admins: Bool
	public let application_question: String?
	public let captcha_difficulty: String
	public let captcha_enabled: Bool
	public let community_creation_admin_only: Bool
	public let default_post_listing_type: String
	public let default_theme: String
	public let enable_downvotes: Bool
	public let enable_nsfw: Bool
	public let federation_debug: Bool
	public let federation_enabled: Bool
	public let federation_worker_count: Int
	public let hide_modlog_mod_names: Bool
	public let id: Int
	public let legal_information: String?
	public let private_instance: Bool
	public let published: String
	public let registration_mode: RegistrationMode
	public let reports_email_admins: Bool
	public let require_email_verification: Bool
	public let site_id: Int
	public let site_setup: Bool
	public let slur_filter_regex: String?
	public let updated: String?
}
