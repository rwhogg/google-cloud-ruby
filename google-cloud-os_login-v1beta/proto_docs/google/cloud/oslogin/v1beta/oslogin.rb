# frozen_string_literal: true

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module OsLogin
      module V1beta
        # The user profile information used for logging in to a virtual machine on
        # Google Compute Engine.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. A unique user ID.
        # @!attribute [rw] posix_accounts
        #   @return [::Array<::Google::Cloud::OsLogin::Common::PosixAccount>]
        #     The list of POSIX accounts associated with the user.
        # @!attribute [rw] ssh_public_keys
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::OsLogin::Common::SshPublicKey}]
        #     A map from SSH public key fingerprint to the associated key object.
        # @!attribute [rw] security_keys
        #   @return [::Array<::Google::Cloud::OsLogin::V1beta::SecurityKey>]
        #     The registered security key credentials for a user.
        class LoginProfile
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::OsLogin::Common::SshPublicKey]
          class SshPublicKeysEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # A request message for creating an SSH public key.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The unique ID for the user in format `users/{user}`.
        # @!attribute [rw] ssh_public_key
        #   @return [::Google::Cloud::OsLogin::Common::SshPublicKey]
        #     Required. The SSH public key and expiration time.
        class CreateSshPublicKeyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request message for deleting a POSIX account entry.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. A reference to the POSIX account to update. POSIX accounts are identified
        #     by the project ID they are associated with. A reference to the POSIX
        #     account is in format `users/{user}/projects/{project}`.
        class DeletePosixAccountRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request message for deleting an SSH public key.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The fingerprint of the public key to update. Public keys are identified by
        #     their SHA-256 fingerprint. The fingerprint of the public key is in format
        #     `users/{user}/sshPublicKeys/{fingerprint}`.
        class DeleteSshPublicKeyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request message for retrieving the login profile information for a user.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The unique ID for the user in format `users/{user}`.
        # @!attribute [rw] project_id
        #   @return [::String]
        #     The project ID of the Google Cloud Platform project.
        # @!attribute [rw] system_id
        #   @return [::String]
        #     A system ID for filtering the results of the request.
        # @!attribute [rw] view
        #   @return [::Google::Cloud::OsLogin::V1beta::LoginProfileView]
        #     The view configures whether to retrieve security keys information.
        class GetLoginProfileRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request message for retrieving an SSH public key.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The fingerprint of the public key to retrieve. Public keys are identified
        #     by their SHA-256 fingerprint. The fingerprint of the public key is in
        #     format `users/{user}/sshPublicKeys/{fingerprint}`.
        class GetSshPublicKeyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request message for importing an SSH public key.
        # @!attribute [rw] parent
        #   @return [::String]
        #     The unique ID for the user in format `users/{user}`.
        # @!attribute [rw] ssh_public_key
        #   @return [::Google::Cloud::OsLogin::Common::SshPublicKey]
        #     Required. The SSH public key and expiration time.
        # @!attribute [rw] project_id
        #   @return [::String]
        #     The project ID of the Google Cloud Platform project.
        # @!attribute [rw] view
        #   @return [::Google::Cloud::OsLogin::V1beta::LoginProfileView]
        #     The view configures whether to retrieve security keys information.
        class ImportSshPublicKeyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A response message for importing an SSH public key.
        # @!attribute [rw] login_profile
        #   @return [::Google::Cloud::OsLogin::V1beta::LoginProfile]
        #     The login profile information for the user.
        # @!attribute [rw] details
        #   @return [::String]
        #     Detailed information about import results.
        class ImportSshPublicKeyResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request message for updating an SSH public key.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The fingerprint of the public key to update. Public keys are identified by
        #     their SHA-256 fingerprint. The fingerprint of the public key is in format
        #     `users/{user}/sshPublicKeys/{fingerprint}`.
        # @!attribute [rw] ssh_public_key
        #   @return [::Google::Cloud::OsLogin::Common::SshPublicKey]
        #     Required. The SSH public key and expiration time.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Mask to control which fields get updated. Updates all if not present.
        class UpdateSshPublicKeyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The credential information for a Google registered security key.
        # @!attribute [rw] public_key
        #   @return [::String]
        #     Public key text in SSH format, defined by
        #     [RFC4253]("https://www.ietf.org/rfc/rfc4253.txt") section 6.6.
        # @!attribute [rw] private_key
        #   @return [::String]
        #     Hardware-backed private key text in SSH format.
        # @!attribute [rw] universal_two_factor
        #   @return [::Google::Cloud::OsLogin::V1beta::UniversalTwoFactor]
        #     The U2F protocol type.
        # @!attribute [rw] web_authn
        #   @return [::Google::Cloud::OsLogin::V1beta::WebAuthn]
        #     The Web Authentication protocol type.
        class SecurityKey
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Security key information specific to the U2F protocol.
        # @!attribute [rw] app_id
        #   @return [::String]
        #     Application ID for the U2F protocol.
        class UniversalTwoFactor
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Security key information specific to the Web Authentication protocol.
        # @!attribute [rw] rp_id
        #   @return [::String]
        #     Relying party ID for Web Authentication.
        class WebAuthn
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The login profile view limits the user content retrieved.
        module LoginProfileView
          # The default login profile view. The API defaults to the BASIC view.
          LOGIN_PROFILE_VIEW_UNSPECIFIED = 0

          # Includes POSIX and SSH key information.
          BASIC = 1

          # Include security key information for the user.
          SECURITY_KEY = 2
        end
      end
    end
  end
end
