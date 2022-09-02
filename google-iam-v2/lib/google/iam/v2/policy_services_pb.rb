# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/iam/v2/policy.proto for package 'google.iam.v2'
# Original file comments:
# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/iam/v2/policy_pb'

module Google
  module Iam
    module V2
      module Policies
        # An interface for managing Identity and Access Management (IAM) policies.
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'google.iam.v2.Policies'

          # Retrieves the policies of the specified kind that are attached to a
          # resource.
          #
          # The response lists only policy metadata. In particular, policy rules are
          # omitted.
          rpc :ListPolicies, ::Google::Iam::V2::ListPoliciesRequest, ::Google::Iam::V2::ListPoliciesResponse
          # Gets a policy.
          rpc :GetPolicy, ::Google::Iam::V2::GetPolicyRequest, ::Google::Iam::V2::Policy
          # Creates a policy.
          rpc :CreatePolicy, ::Google::Iam::V2::CreatePolicyRequest, ::Google::Longrunning::Operation
          # Updates the specified policy.
          #
          # You can update only the rules and the display name for the policy.
          #
          # To update a policy, you should use a read-modify-write loop:
          #
          # 1. Use [GetPolicy][google.iam.v2.Policies.GetPolicy] to read the current
          # version of the policy.
          # 2. Modify the policy as needed.
          # 3. Use `UpdatePolicy` to write the updated policy.
          #
          # This pattern helps prevent conflicts between concurrent updates.
          rpc :UpdatePolicy, ::Google::Iam::V2::UpdatePolicyRequest, ::Google::Longrunning::Operation
          # Deletes a policy. This action is permanent.
          rpc :DeletePolicy, ::Google::Iam::V2::DeletePolicyRequest, ::Google::Longrunning::Operation
          # Retrieves all the policies that are attached to the specified resource,
          # or anywhere in the ancestry of the resource. For example, for a project
          # this endpoint would return all the `denyPolicy` kind policies attached to
          # the project, its parent folder (if any), and its parent organization (if
          # any).
          # The endpoint requires the same permissions that it would take to call
          # `ListPolicies` or `GetPolicy`.
          #
          # The main reason to use this endpoint is as a policy admin to debug access
          # issues for a resource.
          rpc :ListApplicablePolicies, ::Google::Iam::V2::ListApplicablePoliciesRequest, ::Google::Iam::V2::ListApplicablePoliciesResponse
        end

        Stub = Service.rpc_stub_class
      end
    end
  end
end
