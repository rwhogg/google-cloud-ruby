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
  module Api
    # `Service` is the root object of Google API service configuration (service
    # config). It describes the basic information about a logical service,
    # such as the service name and the user-facing title, and delegates other
    # aspects to sub-sections. Each sub-section is either a proto message or a
    # repeated proto message that configures a specific aspect, such as auth.
    # For more information, see each proto message definition.
    #
    # Example:
    #
    #     type: google.api.Service
    #     name: calendar.googleapis.com
    #     title: Google Calendar API
    #     apis:
    #     - name: google.calendar.v3.Calendar
    #
    #     visibility:
    #       rules:
    #       - selector: "google.calendar.v3.*"
    #         restriction: PREVIEW
    #     backend:
    #       rules:
    #       - selector: "google.calendar.v3.*"
    #         address: calendar.example.com
    #
    #     authentication:
    #       providers:
    #       - id: google_calendar_auth
    #         jwks_uri: https://www.googleapis.com/oauth2/v1/certs
    #         issuer: https://securetoken.google.com
    #       rules:
    #       - selector: "*"
    #         requirements:
    #           provider_id: google_calendar_auth
    # @!attribute [rw] name
    #   @return [::String]
    #     The service name, which is a DNS-like logical identifier for the
    #     service, such as `calendar.googleapis.com`. The service name
    #     typically goes through DNS verification to make sure the owner
    #     of the service also owns the DNS name.
    # @!attribute [rw] title
    #   @return [::String]
    #     The product title for this service, it is the name displayed in Google
    #     Cloud Console.
    # @!attribute [rw] producer_project_id
    #   @return [::String]
    #     The Google project that owns this service.
    # @!attribute [rw] id
    #   @return [::String]
    #     A unique ID for a specific instance of this message, typically assigned
    #     by the client for tracking purpose. Must be no longer than 63 characters
    #     and only lower case letters, digits, '.', '_' and '-' are allowed. If
    #     empty, the server may choose to generate one instead.
    # @!attribute [rw] apis
    #   @return [::Array<::Google::Protobuf::Api>]
    #     A list of API interfaces exported by this service. Only the `name` field
    #     of the {::Google::Protobuf::Api google.protobuf.Api} needs to be provided by the configuration
    #     author, as the remaining fields will be derived from the IDL during the
    #     normalization process. It is an error to specify an API interface here
    #     which cannot be resolved against the associated IDL files.
    # @!attribute [rw] types
    #   @return [::Array<::Google::Protobuf::Type>]
    #     A list of all proto message types included in this API service.
    #     Types referenced directly or indirectly by the `apis` are automatically
    #     included.  Messages which are not referenced but shall be included, such as
    #     types used by the `google.protobuf.Any` type, should be listed here by
    #     name by the configuration author. Example:
    #
    #         types:
    #         - name: google.protobuf.Int32
    # @!attribute [rw] enums
    #   @return [::Array<::Google::Protobuf::Enum>]
    #     A list of all enum types included in this API service.  Enums referenced
    #     directly or indirectly by the `apis` are automatically included.  Enums
    #     which are not referenced but shall be included should be listed here by
    #     name by the configuration author. Example:
    #
    #         enums:
    #         - name: google.someapi.v1.SomeEnum
    # @!attribute [rw] documentation
    #   @return [::Google::Api::Documentation]
    #     Additional API documentation.
    # @!attribute [rw] backend
    #   @return [::Google::Api::Backend]
    #     API backend configuration.
    # @!attribute [rw] http
    #   @return [::Google::Api::Http]
    #     HTTP configuration.
    # @!attribute [rw] quota
    #   @return [::Google::Api::Quota]
    #     Quota configuration.
    # @!attribute [rw] authentication
    #   @return [::Google::Api::Authentication]
    #     Auth configuration.
    # @!attribute [rw] context
    #   @return [::Google::Api::Context]
    #     Context configuration.
    # @!attribute [rw] usage
    #   @return [::Google::Api::Usage]
    #     Configuration controlling usage of this service.
    # @!attribute [rw] endpoints
    #   @return [::Array<::Google::Api::Endpoint>]
    #     Configuration for network endpoints.  If this is empty, then an endpoint
    #     with the same name as the service is automatically generated to service all
    #     defined APIs.
    # @!attribute [rw] control
    #   @return [::Google::Api::Control]
    #     Configuration for the service control plane.
    # @!attribute [rw] logs
    #   @return [::Array<::Google::Api::LogDescriptor>]
    #     Defines the logs used by this service.
    # @!attribute [rw] metrics
    #   @return [::Array<::Google::Api::MetricDescriptor>]
    #     Defines the metrics used by this service.
    # @!attribute [rw] monitored_resources
    #   @return [::Array<::Google::Api::MonitoredResourceDescriptor>]
    #     Defines the monitored resources used by this service. This is required
    #     by the {::Google::Api::Service#monitoring Service.monitoring} and {::Google::Api::Service#logging Service.logging} configurations.
    # @!attribute [rw] billing
    #   @return [::Google::Api::Billing]
    #     Billing configuration.
    # @!attribute [rw] logging
    #   @return [::Google::Api::Logging]
    #     Logging configuration.
    # @!attribute [rw] monitoring
    #   @return [::Google::Api::Monitoring]
    #     Monitoring configuration.
    # @!attribute [rw] system_parameters
    #   @return [::Google::Api::SystemParameters]
    #     System parameter configuration.
    # @!attribute [rw] source_info
    #   @return [::Google::Api::SourceInfo]
    #     Output only. The source information for this configuration if available.
    # @!attribute [rw] publishing
    #   @return [::Google::Api::Publishing]
    #     Settings for [Google Cloud Client
    #     libraries](https://cloud.google.com/apis/docs/cloud-client-libraries)
    #     generated from APIs defined as protocol buffers.
    # @!attribute [rw] config_version
    #   @return [::Google::Protobuf::UInt32Value]
    #     Obsolete. Do not use.
    #
    #     This field has no semantic meaning. The service config compiler always
    #     sets this field to `3`.
    class Service
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end
  end
end
