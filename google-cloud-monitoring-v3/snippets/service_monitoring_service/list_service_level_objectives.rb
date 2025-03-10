# frozen_string_literal: true

# Copyright 2021 Google LLC
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

# [START monitoring_v3_generated_ServiceMonitoringService_ListServiceLevelObjectives_sync]
require "google/cloud/monitoring/v3"

##
# Example demonstrating basic usage of
# Google::Cloud::Monitoring::V3::ServiceMonitoringService::Client#list_service_level_objectives
#
def list_service_level_objectives
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Monitoring::V3::ServiceMonitoringService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Monitoring::V3::ListServiceLevelObjectivesRequest.new

  # Call the list_service_level_objectives method.
  result = client.list_service_level_objectives request

  # The returned object is of type Gapic::PagedEnumerable. You can
  # iterate over all elements by calling #each, and the enumerable
  # will lazily make API calls to fetch subsequent pages. Other
  # methods are also available for managing paging directly.
  result.each do |response|
    # Each element is of type ::Google::Cloud::Monitoring::V3::ServiceLevelObjective.
    p response
  end
end
# [END monitoring_v3_generated_ServiceMonitoringService_ListServiceLevelObjectives_sync]
