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
    module GkeMultiCloud
      module V1
        # Request message for `AzureClusters.CreateAzureCluster` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent location where this {::Google::Cloud::GkeMultiCloud::V1::AzureCluster AzureCluster} resource
        #     will be created.
        #
        #     Location names are formatted as `projects/<project-id>/locations/<region>`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on Google Cloud resource names.
        # @!attribute [rw] azure_cluster
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AzureCluster]
        #     Required. The specification of the {::Google::Cloud::GkeMultiCloud::V1::AzureCluster AzureCluster} to create.
        # @!attribute [rw] azure_cluster_id
        #   @return [::String]
        #     Required. A client provided ID the resource. Must be unique within the parent
        #     resource.
        #
        #     The provided ID will be part of the {::Google::Cloud::GkeMultiCloud::V1::AzureCluster AzureCluster}
        #     resource name formatted as
        #     `projects/<project-id>/locations/<region>/azureClusters/<cluster-id>`.
        #
        #     Valid characters are `/[a-z][0-9]-/`. Cannot be longer than 40 characters.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     If set, only validate the request, but do not actually create the cluster.
        class CreateAzureClusterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `AzureClusters.UpdateAzureCluster` method.
        # @!attribute [rw] azure_cluster
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AzureCluster]
        #     Required. The {::Google::Cloud::GkeMultiCloud::V1::AzureCluster AzureCluster} resource to update.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     If set, only validate the request, but do not actually update the cluster.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Mask of fields to update. At least one path must be supplied in
        #     this field. The elements of the repeated paths field can only include these
        #     fields from {::Google::Cloud::GkeMultiCloud::V1::AzureCluster AzureCluster}:
        #
        #      *   `description`.
        #      *   `annotations`.
        #      *   `azureClient`.
        #      *   `control_plane.version`.
        #      *   `control_plane.vm_size`.
        #      *   `authorization.admin_users`.
        #      *   `control_plane.root_volume.size_gib`.
        #      *   `logging_config`
        class UpdateAzureClusterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `AzureClusters.GetAzureCluster` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the {::Google::Cloud::GkeMultiCloud::V1::AzureCluster AzureCluster} resource to describe.
        #
        #     `AzureCluster` names are formatted as
        #     `projects/<project-id>/locations/<region>/azureClusters/<cluster-id>`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on GCP resource names.
        class GetAzureClusterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `AzureClusters.ListAzureClusters` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent location which owns this collection of
        #     {::Google::Cloud::GkeMultiCloud::V1::AzureCluster AzureCluster} resources.
        #
        #     Location names are formatted as `projects/<project-id>/locations/<region>`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on GCP resource names.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of items to return.
        #
        #     If not specified, a default value of 50 will be used by the service.
        #     Regardless of the pageSize value, the response can include a partial list
        #     and a caller should only rely on response's
        #     {::Google::Cloud::GkeMultiCloud::V1::ListAzureClustersResponse#next_page_token nextPageToken} to determine if
        #     there are more instances left to be queried.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The `nextPageToken` value returned from a previous
        #     {::Google::Cloud::GkeMultiCloud::V1::AzureClusters::Client#list_azure_clusters azureClusters.list} request, if any.
        class ListAzureClustersRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for `AzureClusters.ListAzureClusters` method.
        # @!attribute [rw] azure_clusters
        #   @return [::Array<::Google::Cloud::GkeMultiCloud::V1::AzureCluster>]
        #     A list of {::Google::Cloud::GkeMultiCloud::V1::AzureCluster AzureCluster} resources in the specified GCP
        #     project and region region.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to retrieve the next page of results, or empty if there are no more
        #     results in the list.
        class ListAzureClustersResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `Clusters.DeleteAzureCluster` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name the {::Google::Cloud::GkeMultiCloud::V1::AzureCluster AzureCluster} to delete.
        #
        #     `AzureCluster` names are formatted as
        #     `projects/<project-id>/locations/<region>/azureClusters/<cluster-id>`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on GCP resource names.
        # @!attribute [rw] allow_missing
        #   @return [::Boolean]
        #     If set to true, and the {::Google::Cloud::GkeMultiCloud::V1::AzureCluster AzureCluster} resource is not found,
        #     the request will succeed but no action will be taken on the server and a
        #     completed {::Google::Longrunning::Operation Operation} will be returned.
        #
        #     Useful for idempotent deletion.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     If set, only validate the request, but do not actually delete the resource.
        # @!attribute [rw] etag
        #   @return [::String]
        #     The current etag of the {::Google::Cloud::GkeMultiCloud::V1::AzureCluster AzureCluster}.
        #
        #     Allows clients to perform deletions through optimistic concurrency control.
        #
        #     If the provided etag does not match the current etag of the cluster,
        #     the request will fail and an ABORTED error will be returned.
        class DeleteAzureClusterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for `AzureClusters.CreateAzureNodePool` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The {::Google::Cloud::GkeMultiCloud::V1::AzureCluster AzureCluster} resource where this node pool will be created.
        #
        #     Location names are formatted as `projects/<project-id>/locations/<region>`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on Google Cloud resource names.
        # @!attribute [rw] azure_node_pool
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AzureNodePool]
        #     Required. The specification of the {::Google::Cloud::GkeMultiCloud::V1::AzureNodePool AzureNodePool} to create.
        # @!attribute [rw] azure_node_pool_id
        #   @return [::String]
        #     Required. A client provided ID the resource. Must be unique within the parent
        #     resource.
        #
        #     The provided ID will be part of the {::Google::Cloud::GkeMultiCloud::V1::AzureNodePool AzureNodePool}
        #     resource name formatted as
        #     `projects/<project-id>/locations/<region>/azureClusters/<cluster-id>/azureNodePools/<node-pool-id>`.
        #
        #     Valid characters are `/[a-z][0-9]-/`. Cannot be longer than 40 characters.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     If set, only validate the request, but do not actually create the node
        #     pool.
        class CreateAzureNodePoolRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `AzureClusters.UpdateAzureNodePool` method.
        # @!attribute [rw] azure_node_pool
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AzureNodePool]
        #     Required. The {::Google::Cloud::GkeMultiCloud::V1::AzureNodePool AzureNodePool} resource to update.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     If set, only validate the request, but don't actually update the node pool.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Mask of fields to update. At least one path must be supplied in
        #     this field. The elements of the repeated paths field can only include these
        #     fields from {::Google::Cloud::GkeMultiCloud::V1::AzureNodePool AzureNodePool}:
        #
        #      *.  `annotations`.
        #      *   `version`.
        #      *   `autoscaling.min_node_count`.
        #      *   `autoscaling.max_node_count`.
        #      *   `config.vm_size`.
        class UpdateAzureNodePoolRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `AzureClusters.GetAzureNodePool` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the {::Google::Cloud::GkeMultiCloud::V1::AzureNodePool AzureNodePool} resource to describe.
        #
        #     `AzureNodePool` names are formatted as
        #     `projects/<project-id>/locations/<region>/azureClusters/<cluster-id>/azureNodePools/<node-pool-id>`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on Google Cloud resource names.
        class GetAzureNodePoolRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `AzureClusters.ListAzureNodePools` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent `AzureCluster` which owns this collection of
        #     {::Google::Cloud::GkeMultiCloud::V1::AzureNodePool AzureNodePool} resources.
        #
        #     `AzureCluster` names are formatted as
        #     `projects/<project-id>/locations/<region>/azureClusters/<cluster-id>`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on Google Cloud resource names.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of items to return.
        #
        #     If not specified, a default value of 50 will be used by the service.
        #     Regardless of the pageSize value, the response can include a partial list
        #     and a caller should only rely on response's
        #     {::Google::Cloud::GkeMultiCloud::V1::ListAzureNodePoolsResponse#next_page_token nextPageToken} to determine if
        #     there are more instances left to be queried.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The `nextPageToken` value returned from a previous
        #     {::Google::Cloud::GkeMultiCloud::V1::AzureClusters::Client#list_azure_node_pools azureNodePools.list} request, if any.
        class ListAzureNodePoolsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for `AzureClusters.ListAzureNodePools` method.
        # @!attribute [rw] azure_node_pools
        #   @return [::Array<::Google::Cloud::GkeMultiCloud::V1::AzureNodePool>]
        #     A list of {::Google::Cloud::GkeMultiCloud::V1::AzureNodePool AzureNodePool} resources in the specified `AzureCluster`.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to retrieve the next page of results, or empty if there are no more
        #     results in the list.
        class ListAzureNodePoolsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Delete message for `AzureClusters.DeleteNodePool` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name the {::Google::Cloud::GkeMultiCloud::V1::AzureNodePool AzureNodePool} to delete.
        #
        #     `AzureNodePool` names are formatted as
        #     `projects/<project-id>/locations/<region>/azureClusters/<cluster-id>/azureNodePools/<node-pool-id>`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on Google Cloud resource names.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     If set, only validate the request, but do not actually delete the node
        #     pool.
        # @!attribute [rw] allow_missing
        #   @return [::Boolean]
        #     If set to true, and the {::Google::Cloud::GkeMultiCloud::V1::AzureNodePool AzureNodePool} resource is not found,
        #     the request will succeed but no action will be taken on the server and a
        #     completed {::Google::Longrunning::Operation Operation} will be returned.
        #
        #     Useful for idempotent deletion.
        # @!attribute [rw] etag
        #   @return [::String]
        #     The current ETag of the {::Google::Cloud::GkeMultiCloud::V1::AzureNodePool AzureNodePool}.
        #
        #     Allows clients to perform deletions through optimistic concurrency control.
        #
        #     If the provided ETag does not match the current etag of the node pool,
        #     the request will fail and an ABORTED error will be returned.
        class DeleteAzureNodePoolRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # GetAzureServerConfigRequest gets the server config of GKE cluster on Azure.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the {::Google::Cloud::GkeMultiCloud::V1::AzureServerConfig AzureServerConfig} resource to describe.
        #
        #     `AzureServerConfig` names are formatted as
        #     `projects/<project-id>/locations/<region>/azureServerConfig`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on Google Cloud resource names.
        class GetAzureServerConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `AzureClusters.CreateAzureClient` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent location where this {::Google::Cloud::GkeMultiCloud::V1::AzureClient AzureClient} resource
        #     will be created.
        #
        #     Location names are formatted as `projects/<project-id>/locations/<region>`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on Google Cloud resource names.
        # @!attribute [rw] azure_client
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AzureClient]
        #     Required. The specification of the {::Google::Cloud::GkeMultiCloud::V1::AzureClient AzureClient} to create.
        # @!attribute [rw] azure_client_id
        #   @return [::String]
        #     Required. A client provided ID the resource. Must be unique within the parent
        #     resource.
        #
        #     The provided ID will be part of the {::Google::Cloud::GkeMultiCloud::V1::AzureClient AzureClient}
        #     resource name formatted as
        #     `projects/<project-id>/locations/<region>/azureClients/<client-id>`.
        #
        #     Valid characters are `/[a-z][0-9]-/`. Cannot be longer than 40 characters.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     If set, only validate the request, but do not actually create the client.
        class CreateAzureClientRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `AzureClusters.GetAzureClient` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the {::Google::Cloud::GkeMultiCloud::V1::AzureClient AzureClient} resource to describe.
        #
        #     {::Google::Cloud::GkeMultiCloud::V1::AzureClient AzureClient} names are formatted as
        #     `projects/<project-id>/locations/<region>/azureClients/<client-id>`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on Google Cloud resource names.
        class GetAzureClientRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `AzureClusters.ListAzureClients` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent location which owns this collection of
        #     {::Google::Cloud::GkeMultiCloud::V1::AzureClient AzureClient} resources.
        #
        #     Location names are formatted as `projects/<project-id>/locations/<region>`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on GCP resource names.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of items to return.
        #
        #     If not specified, a default value of 50 will be used by the service.
        #     Regardless of the pageSize value, the response can include a partial list
        #     and a caller should only rely on response's
        #     {::Google::Cloud::GkeMultiCloud::V1::ListAzureClientsResponse#next_page_token nextPageToken} to determine if
        #     there are more instances left to be queried.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The `nextPageToken` value returned from a previous
        #     {::Google::Cloud::GkeMultiCloud::V1::AzureClusters::Client#list_azure_clients azureClients.list} request, if any.
        class ListAzureClientsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for `AzureClusters.ListAzureClients` method.
        # @!attribute [rw] azure_clients
        #   @return [::Array<::Google::Cloud::GkeMultiCloud::V1::AzureClient>]
        #     A list of {::Google::Cloud::GkeMultiCloud::V1::AzureClient AzureClient} resources in the specified Google Cloud
        #     project and region region.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to retrieve the next page of results, or empty if there are no more
        #     results in the list.
        class ListAzureClientsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `AzureClusters.DeleteAzureClient` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name the {::Google::Cloud::GkeMultiCloud::V1::AzureClient AzureClient} to delete.
        #
        #     {::Google::Cloud::GkeMultiCloud::V1::AzureClient AzureClient} names are formatted as
        #     `projects/<project-id>/locations/<region>/azureClients/<client-id>`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on Google Cloud resource names.
        # @!attribute [rw] allow_missing
        #   @return [::Boolean]
        #     If set to true, and the {::Google::Cloud::GkeMultiCloud::V1::AzureClient AzureClient} resource is not found,
        #     the request will succeed but no action will be taken on the server and a
        #     completed {::Google::Longrunning::Operation Operation} will be returned.
        #
        #     Useful for idempotent deletion.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     If set, only validate the request, but do not actually delete the resource.
        class DeleteAzureClientRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `AzureClusters.GenerateAzureAccessToken` method.
        # @!attribute [rw] azure_cluster
        #   @return [::String]
        #     Required. The name of the {::Google::Cloud::GkeMultiCloud::V1::AzureCluster AzureCluster} resource to authenticate to.
        #
        #     `AzureCluster` names are formatted as
        #     `projects/<project-id>/locations/<region>/AzureClusters/<cluster-id>`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on Google Cloud resource names.
        class GenerateAzureAccessTokenRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for `AzureClusters.GenerateAzureAccessToken` method.
        # @!attribute [r] access_token
        #   @return [::String]
        #     Output only. Access token to authenticate to k8s api-server.
        # @!attribute [r] expiration_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp at which the token will expire.
        class GenerateAzureAccessTokenResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end