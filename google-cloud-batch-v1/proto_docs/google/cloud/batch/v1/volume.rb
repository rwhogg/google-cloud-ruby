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
    module Batch
      module V1
        # Volume and mount parameters to be associated with a TaskSpec. A TaskSpec
        # might describe zero, one, or multiple volumes to be mounted as part of the
        # task.
        # @!attribute [rw] nfs
        #   @return [::Google::Cloud::Batch::V1::NFS]
        #     An NFS source for the volume (could be a Filestore, for example).
        # @!attribute [rw] gcs
        #   @return [::Google::Cloud::Batch::V1::GCS]
        #     A Google Cloud Storage source for the volume.
        # @!attribute [rw] device_name
        #   @return [::String]
        #     Device name of an attached disk
        # @!attribute [rw] mount_path
        #   @return [::String]
        #     Mount path for the volume, e.g. /mnt/share
        # @!attribute [rw] mount_options
        #   @return [::Array<::String>]
        #     Mount options
        #     For Google Cloud Storage, mount options are the global options supported by
        #     gcsfuse tool. Batch will use them to mount the volume with the following
        #     command:
        #     "gcsfuse [global options] bucket mountpoint".
        #     For PD, NFS, mount options are these supported by /etc/fstab. Batch will
        #     use Fstab to mount such volumes.
        #     https://help.ubuntu.com/community/Fstab
        class Volume
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents an NFS server and remote path: <server>:<remote_path>
        # @!attribute [rw] server
        #   @return [::String]
        #     URI of the NFS server, e.g. an IP address.
        # @!attribute [rw] remote_path
        #   @return [::String]
        #     Remote source path exported from NFS, e.g., "/share".
        class NFS
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents a Google Cloud Storage volume source config.
        # @!attribute [rw] remote_path
        #   @return [::String]
        #     Remote path, either a bucket name or a subdirectory of a bucket, e.g.:
        #     bucket_name, bucket_name/subdirectory/
        class GCS
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end