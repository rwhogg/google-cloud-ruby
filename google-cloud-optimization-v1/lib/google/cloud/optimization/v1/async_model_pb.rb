# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/optimization/v1/async_model.proto

require 'google/api/field_behavior_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/optimization/v1/async_model.proto", :syntax => :proto3) do
    add_message "google.cloud.optimization.v1.InputConfig" do
      optional :data_format, :enum, 2, "google.cloud.optimization.v1.DataFormat"
      oneof :source do
        optional :gcs_source, :message, 1, "google.cloud.optimization.v1.GcsSource"
      end
    end
    add_message "google.cloud.optimization.v1.OutputConfig" do
      optional :data_format, :enum, 2, "google.cloud.optimization.v1.DataFormat"
      oneof :destination do
        optional :gcs_destination, :message, 1, "google.cloud.optimization.v1.GcsDestination"
      end
    end
    add_message "google.cloud.optimization.v1.GcsSource" do
      optional :uri, :string, 1
    end
    add_message "google.cloud.optimization.v1.GcsDestination" do
      optional :uri, :string, 1
    end
    add_message "google.cloud.optimization.v1.AsyncModelMetadata" do
      optional :state, :enum, 1, "google.cloud.optimization.v1.AsyncModelMetadata.State"
      optional :state_message, :string, 2
      optional :create_time, :message, 3, "google.protobuf.Timestamp"
      optional :update_time, :message, 4, "google.protobuf.Timestamp"
    end
    add_enum "google.cloud.optimization.v1.AsyncModelMetadata.State" do
      value :STATE_UNSPECIFIED, 0
      value :RUNNING, 1
      value :SUCCEEDED, 2
      value :CANCELLED, 3
      value :FAILED, 4
    end
    add_enum "google.cloud.optimization.v1.DataFormat" do
      value :DATA_FORMAT_UNSPECIFIED, 0
      value :JSON, 1
      value :STRING, 2
    end
  end
end

module Google
  module Cloud
    module Optimization
      module V1
        InputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.optimization.v1.InputConfig").msgclass
        OutputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.optimization.v1.OutputConfig").msgclass
        GcsSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.optimization.v1.GcsSource").msgclass
        GcsDestination = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.optimization.v1.GcsDestination").msgclass
        AsyncModelMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.optimization.v1.AsyncModelMetadata").msgclass
        AsyncModelMetadata::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.optimization.v1.AsyncModelMetadata.State").enummodule
        DataFormat = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.optimization.v1.DataFormat").enummodule
      end
    end
  end
end