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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/beyondcorp/appgateways/v1/app_gateways_service_pb"
require "google/cloud/beyondcorp/appgateways/v1/app_gateways_service_services_pb"
require "google/cloud/beyond_corp/app_gateways/v1/app_gateways_service"

class ::Google::Cloud::BeyondCorp::AppGateways::V1::AppGatewaysService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_list_app_gateways
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::BeyondCorp::AppGateways::V1::ListAppGatewaysResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_app_gateways_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_app_gateways, name
      assert_kind_of ::Google::Cloud::BeyondCorp::AppGateways::V1::ListAppGatewaysRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["order_by"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_app_gateways_client_stub do
      # Create client
      client = ::Google::Cloud::BeyondCorp::AppGateways::V1::AppGatewaysService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_app_gateways({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_app_gateways parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_app_gateways ::Google::Cloud::BeyondCorp::AppGateways::V1::ListAppGatewaysRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_app_gateways({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_app_gateways(::Google::Cloud::BeyondCorp::AppGateways::V1::ListAppGatewaysRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_app_gateways_client_stub.call_rpc_count
    end
  end

  def test_get_app_gateway
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::BeyondCorp::AppGateways::V1::AppGateway.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_app_gateway_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_app_gateway, name
      assert_kind_of ::Google::Cloud::BeyondCorp::AppGateways::V1::GetAppGatewayRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_app_gateway_client_stub do
      # Create client
      client = ::Google::Cloud::BeyondCorp::AppGateways::V1::AppGatewaysService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_app_gateway({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_app_gateway name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_app_gateway ::Google::Cloud::BeyondCorp::AppGateways::V1::GetAppGatewayRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_app_gateway({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_app_gateway(::Google::Cloud::BeyondCorp::AppGateways::V1::GetAppGatewayRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_app_gateway_client_stub.call_rpc_count
    end
  end

  def test_create_app_gateway
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    app_gateway_id = "hello world"
    app_gateway = {}
    request_id = "hello world"
    validate_only = true

    create_app_gateway_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_app_gateway, name
      assert_kind_of ::Google::Cloud::BeyondCorp::AppGateways::V1::CreateAppGatewayRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["app_gateway_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::BeyondCorp::AppGateways::V1::AppGateway), request["app_gateway"]
      assert_equal "hello world", request["request_id"]
      assert_equal true, request["validate_only"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_app_gateway_client_stub do
      # Create client
      client = ::Google::Cloud::BeyondCorp::AppGateways::V1::AppGatewaysService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_app_gateway({ parent: parent, app_gateway_id: app_gateway_id, app_gateway: app_gateway, request_id: request_id, validate_only: validate_only }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_app_gateway parent: parent, app_gateway_id: app_gateway_id, app_gateway: app_gateway, request_id: request_id, validate_only: validate_only do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_app_gateway ::Google::Cloud::BeyondCorp::AppGateways::V1::CreateAppGatewayRequest.new(parent: parent, app_gateway_id: app_gateway_id, app_gateway: app_gateway, request_id: request_id, validate_only: validate_only) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_app_gateway({ parent: parent, app_gateway_id: app_gateway_id, app_gateway: app_gateway, request_id: request_id, validate_only: validate_only }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_app_gateway(::Google::Cloud::BeyondCorp::AppGateways::V1::CreateAppGatewayRequest.new(parent: parent, app_gateway_id: app_gateway_id, app_gateway: app_gateway, request_id: request_id, validate_only: validate_only), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_app_gateway_client_stub.call_rpc_count
    end
  end

  def test_delete_app_gateway
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    request_id = "hello world"
    validate_only = true

    delete_app_gateway_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_app_gateway, name
      assert_kind_of ::Google::Cloud::BeyondCorp::AppGateways::V1::DeleteAppGatewayRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["request_id"]
      assert_equal true, request["validate_only"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_app_gateway_client_stub do
      # Create client
      client = ::Google::Cloud::BeyondCorp::AppGateways::V1::AppGatewaysService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_app_gateway({ name: name, request_id: request_id, validate_only: validate_only }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_app_gateway name: name, request_id: request_id, validate_only: validate_only do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_app_gateway ::Google::Cloud::BeyondCorp::AppGateways::V1::DeleteAppGatewayRequest.new(name: name, request_id: request_id, validate_only: validate_only) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_app_gateway({ name: name, request_id: request_id, validate_only: validate_only }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_app_gateway(::Google::Cloud::BeyondCorp::AppGateways::V1::DeleteAppGatewayRequest.new(name: name, request_id: request_id, validate_only: validate_only), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_app_gateway_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::BeyondCorp::AppGateways::V1::AppGatewaysService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::BeyondCorp::AppGateways::V1::AppGatewaysService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::BeyondCorp::AppGateways::V1::AppGatewaysService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::BeyondCorp::AppGateways::V1::AppGatewaysService::Operations, client.operations_client
  end
end