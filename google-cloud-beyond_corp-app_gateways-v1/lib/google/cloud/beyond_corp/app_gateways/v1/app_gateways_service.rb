# frozen_string_literal: true

# Copyright 2022 Google LLC
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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/beyond_corp/app_gateways/v1/version"

require "google/cloud/beyond_corp/app_gateways/v1/app_gateways_service/credentials"
require "google/cloud/beyond_corp/app_gateways/v1/app_gateways_service/paths"
require "google/cloud/beyond_corp/app_gateways/v1/app_gateways_service/operations"
require "google/cloud/beyond_corp/app_gateways/v1/app_gateways_service/client"

module Google
  module Cloud
    module BeyondCorp
      module AppGateways
        module V1
          ##
          # API Overview:
          #
          # The `beyondcorp.googleapis.com` service implements the Google Cloud
          # BeyondCorp API.
          #
          # Data Model:
          #
          # The AppGatewaysService exposes the following resources:
          #
          # * AppGateways, named as follows:
          #   `projects/{project_id}/locations/{location_id}/appGateways/{app_gateway_id}`.
          #
          # The AppGatewaysService service provides methods to manage
          # (create/read/update/delete) BeyondCorp AppGateways.
          #
          # To load this service and instantiate a client:
          #
          #     require "google/cloud/beyond_corp/app_gateways/v1/app_gateways_service"
          #     client = ::Google::Cloud::BeyondCorp::AppGateways::V1::AppGatewaysService::Client.new
          #
          module AppGatewaysService
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "app_gateways_service", "helpers.rb"
require "google/cloud/beyond_corp/app_gateways/v1/app_gateways_service/helpers" if ::File.file? helper_path
