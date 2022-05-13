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

require "google/cloud/run/v2/revision_pb"
require "google/cloud/run/v2/revision_services_pb"
require "google/cloud/run/v2/revisions"

class ::Google::Cloud::Run::V2::Revisions::ClientTest < Minitest::Test
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

  def test_get_revision
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Run::V2::Revision.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_revision_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_revision, name
      assert_kind_of ::Google::Cloud::Run::V2::GetRevisionRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_revision_client_stub do
      # Create client
      client = ::Google::Cloud::Run::V2::Revisions::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_revision({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_revision name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_revision ::Google::Cloud::Run::V2::GetRevisionRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_revision({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_revision(::Google::Cloud::Run::V2::GetRevisionRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_revision_client_stub.call_rpc_count
    end
  end

  def test_list_revisions
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Run::V2::ListRevisionsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    show_deleted = true

    list_revisions_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_revisions, name
      assert_kind_of ::Google::Cloud::Run::V2::ListRevisionsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal true, request["show_deleted"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_revisions_client_stub do
      # Create client
      client = ::Google::Cloud::Run::V2::Revisions::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_revisions({ parent: parent, page_size: page_size, page_token: page_token, show_deleted: show_deleted }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_revisions parent: parent, page_size: page_size, page_token: page_token, show_deleted: show_deleted do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_revisions ::Google::Cloud::Run::V2::ListRevisionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, show_deleted: show_deleted) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_revisions({ parent: parent, page_size: page_size, page_token: page_token, show_deleted: show_deleted }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_revisions(::Google::Cloud::Run::V2::ListRevisionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, show_deleted: show_deleted), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_revisions_client_stub.call_rpc_count
    end
  end

  def test_delete_revision
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    validate_only = true
    etag = "hello world"

    delete_revision_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_revision, name
      assert_kind_of ::Google::Cloud::Run::V2::DeleteRevisionRequest, request
      assert_equal "hello world", request["name"]
      assert_equal true, request["validate_only"]
      assert_equal "hello world", request["etag"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_revision_client_stub do
      # Create client
      client = ::Google::Cloud::Run::V2::Revisions::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_revision({ name: name, validate_only: validate_only, etag: etag }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_revision name: name, validate_only: validate_only, etag: etag do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_revision ::Google::Cloud::Run::V2::DeleteRevisionRequest.new(name: name, validate_only: validate_only, etag: etag) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_revision({ name: name, validate_only: validate_only, etag: etag }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_revision(::Google::Cloud::Run::V2::DeleteRevisionRequest.new(name: name, validate_only: validate_only, etag: etag), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_revision_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Run::V2::Revisions::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Run::V2::Revisions::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Run::V2::Revisions::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Run::V2::Revisions::Operations, client.operations_client
  end
end