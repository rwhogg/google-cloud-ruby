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
    module Dialogflow
      module V2
        # Represents metadata of a conversation.
        # @!attribute [rw] language_code
        #   @return [::String]
        #     Optional. The language code of the conversation data within this dataset. See
        #     https://cloud.google.com/apis/design/standard_fields for more information.
        #     Supports all UTF-8 languages.
        class ConversationInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents the configuration of importing a set of conversation files in
        # Google Cloud Storage.
        # @!attribute [rw] gcs_source
        #   @return [::Google::Cloud::Dialogflow::V2::GcsSources]
        #     The Cloud Storage URI has the form gs://<Google Cloud Storage bucket
        #     name>//agent*.json. Wildcards are allowed and will be expanded into all
        #     matched JSON files, which will be read as one conversation per file.
        class InputConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents a conversation dataset that a user imports raw data into.
        # The data inside ConversationDataset can not be changed after
        # ImportConversationData finishes (and calling ImportConversationData on a
        # dataset that already has data is not allowed).
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. ConversationDataset resource name. Format:
        #     `projects/<Project ID>/locations/<Location
        #     ID>/conversationDatasets/<Conversation Dataset ID>`
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The display name of the dataset. Maximum of 64 bytes.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. The description of the dataset. Maximum of 10000 bytes.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Creation time of this dataset.
        # @!attribute [r] input_config
        #   @return [::Google::Cloud::Dialogflow::V2::InputConfig]
        #     Output only. Input configurations set during conversation data import.
        # @!attribute [r] conversation_info
        #   @return [::Google::Cloud::Dialogflow::V2::ConversationInfo]
        #     Output only. Metadata set during conversation data import.
        # @!attribute [r] conversation_count
        #   @return [::Integer]
        #     Output only. The number of conversations this conversation dataset contains.
        class ConversationDataset
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::ConversationDatasets::Client#create_conversation_dataset ConversationDatasets.CreateConversationDataset}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The project to create conversation dataset for. Format:
        #     `projects/<Project ID>/locations/<Location ID>`
        # @!attribute [rw] conversation_dataset
        #   @return [::Google::Cloud::Dialogflow::V2::ConversationDataset]
        #     Required. The conversation dataset to create.
        class CreateConversationDatasetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::ConversationDatasets::Client#get_conversation_dataset ConversationDatasets.GetConversationDataset}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The conversation dataset to retrieve. Format:
        #     `projects/<Project ID>/locations/<Location
        #     ID>/conversationDatasets/<Conversation Dataset ID>`
        class GetConversationDatasetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::ConversationDatasets::Client#list_conversation_datasets ConversationDatasets.ListConversationDatasets}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The project and location name to list all conversation datasets for.
        #     Format: `projects/<Project ID>/locations/<Location ID>`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Maximum number of conversation datasets to return in a single
        #     page. By default 100 and at most 1000.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The next_page_token value returned from a previous list request.
        class ListConversationDatasetsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response message for
        # {::Google::Cloud::Dialogflow::V2::ConversationDatasets::Client#list_conversation_datasets ConversationDatasets.ListConversationDatasets}.
        # @!attribute [rw] conversation_datasets
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::ConversationDataset>]
        #     The list of datasets to return.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The token to use to retrieve the next page of results, or empty if there
        #     are no more results in the list.
        class ListConversationDatasetsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::Dialogflow::V2::ConversationDatasets::Client#delete_conversation_dataset ConversationDatasets.DeleteConversationDataset}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The conversation dataset to delete. Format:
        #     `projects/<Project ID>/locations/<Location
        #     ID>/conversationDatasets/<Conversation Dataset ID>`
        class DeleteConversationDatasetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for {::Google::Cloud::Dialogflow::V2::ConversationDatasets::Client#import_conversation_data ConversationDatasets.ImportConversationData}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Dataset resource name. Format:
        #     `projects/<Project ID>/locations/<Location
        #     ID>/conversationDatasets/<Conversation Dataset ID>`
        # @!attribute [rw] input_config
        #   @return [::Google::Cloud::Dialogflow::V2::InputConfig]
        #     Required. Configuration describing where to import data from.
        class ImportConversationDataRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata for a {::Google::Cloud::Dialogflow::V2::ConversationDatasets::Client#import_conversation_data ConversationDatasets.ImportConversationData} operation.
        # @!attribute [rw] conversation_dataset
        #   @return [::String]
        #     The resource name of the imported conversation dataset. Format:
        #     `projects/<Project ID>/locations/<Location
        #     ID>/conversationDatasets/<Conversation Dataset Id>`
        # @!attribute [rw] partial_failures
        #   @return [::Array<::Google::Rpc::Status>]
        #     Partial failures are failures that don't fail the whole long running
        #     operation, e.g. single files that couldn't be read.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Timestamp when import conversation data request was created. The time is
        #     measured on server side.
        class ImportConversationDataOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response used for {::Google::Cloud::Dialogflow::V2::ConversationDatasets::Client#import_conversation_data ConversationDatasets.ImportConversationData} long
        # running operation.
        # @!attribute [rw] conversation_dataset
        #   @return [::String]
        #     The resource name of the imported conversation dataset. Format:
        #     `projects/<Project ID>/locations/<Location
        #     ID>/conversationDatasets/<Conversation Dataset Id>`
        # @!attribute [rw] import_count
        #   @return [::Integer]
        #     Number of conversations imported successfully.
        class ImportConversationDataOperationResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata for [ConversationDatasets][CreateConversationDataset].
        # @!attribute [rw] conversation_dataset
        #   @return [::String]
        #     The resource name of the conversation dataset that will be created. Format:
        #     `projects/<Project ID>/locations/<Location
        #     ID>/conversationDatasets/<Conversation Dataset Id>`
        class CreateConversationDatasetOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata for [ConversationDatasets][DeleteConversationDataset].
        class DeleteConversationDatasetOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
