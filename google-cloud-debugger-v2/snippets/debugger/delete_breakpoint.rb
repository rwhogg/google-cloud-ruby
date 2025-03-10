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

# [START clouddebugger_v2_generated_Debugger_DeleteBreakpoint_sync]
require "google/cloud/debugger/v2"

##
# Example demonstrating basic usage of
# Google::Cloud::Debugger::V2::Debugger::Client#delete_breakpoint
#
def delete_breakpoint
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Debugger::V2::Debugger::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Debugger::V2::DeleteBreakpointRequest.new

  # Call the delete_breakpoint method.
  result = client.delete_breakpoint request

  # The returned object is of type Google::Protobuf::Empty.
  p result
end
# [END clouddebugger_v2_generated_Debugger_DeleteBreakpoint_sync]
