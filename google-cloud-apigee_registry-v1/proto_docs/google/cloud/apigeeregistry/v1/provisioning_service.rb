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


module Google
  module Cloud
    module ApigeeRegistry
      module V1
        # Request message for CreateInstance.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Parent resource of the Instance, of the form: `projects/*/locations/*`
        # @!attribute [rw] instance_id
        #   @return [::String]
        #     Required. Identifier to assign to the Instance. Must be unique within scope of the
        #     parent resource.
        # @!attribute [rw] instance
        #   @return [::Google::Cloud::ApigeeRegistry::V1::Instance]
        #     Required. The Instance.
        class CreateInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for DeleteInstance.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the Instance to delete.
        #     Format: `projects/*/locations/*/instances/*`.
        class DeleteInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for GetInstance.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the Instance to retrieve.
        #     Format: `projects/*/locations/*/instances/*`.
        class GetInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents the metadata of the long-running operation.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time the operation was created.
        # @!attribute [rw] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time the operation finished running.
        # @!attribute [rw] target
        #   @return [::String]
        #     Server-defined resource path for the target of the operation.
        # @!attribute [rw] verb
        #   @return [::String]
        #     Name of the verb executed by the operation.
        # @!attribute [rw] status_message
        #   @return [::String]
        #     Human-readable status of the operation, if any.
        # @!attribute [rw] cancellation_requested
        #   @return [::Boolean]
        #     Identifies whether the user has requested cancellation
        #     of the operation. Operations that have successfully been cancelled
        #     have [Operation.error][] value with a {::Google::Rpc::Status#code google.rpc.Status.code} of 1,
        #     corresponding to `Code.CANCELLED`.
        # @!attribute [rw] api_version
        #   @return [::String]
        #     API version used to start the operation.
        class OperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An Instance represents the instance resources of the Registry.
        # Currently, only one instance is allowed for each project.
        # @!attribute [rw] name
        #   @return [::String]
        #     Format: `projects/*/locations/*/instance`.
        #     Currently only locations/global is supported.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Creation timestamp.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Last update timestamp.
        # @!attribute [r] state
        #   @return [::Google::Cloud::ApigeeRegistry::V1::Instance::State]
        #     Output only. The current state of the Instance.
        # @!attribute [r] state_message
        #   @return [::String]
        #     Output only. Extra information of Instance.State if the state is `FAILED`.
        # @!attribute [rw] config
        #   @return [::Google::Cloud::ApigeeRegistry::V1::Instance::Config]
        #     Required. Config of the Instance.
        class Instance
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Available configurations to provision an Instance.
          # @!attribute [r] location
          #   @return [::String]
          #     Output only. The GCP location where the Instance resides.
          # @!attribute [rw] cmek_key_name
          #   @return [::String]
          #     Required. The Customer Managed Encryption Key (CMEK) used for data encryption.
          #     The CMEK name should follow the format of
          #     `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`,
          #     where the `location` must match InstanceConfig.location.
          class Config
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # State of the Instance.
          module State
            # The default value. This value is used if the state is omitted.
            STATE_UNSPECIFIED = 0

            # The Instance has not been initialized or has been deleted.
            INACTIVE = 1

            # The Instance is being created.
            CREATING = 2

            # The Instance has been created and is ready for use.
            ACTIVE = 3

            # The Instance is being updated.
            UPDATING = 4

            # The Instance is being deleted.
            DELETING = 5

            # The Instance encountered an error during a state change.
            FAILED = 6
          end
        end
      end
    end
  end
end