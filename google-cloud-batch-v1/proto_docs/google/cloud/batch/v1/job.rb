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
        # The Cloud Batch Job description.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. Job name.
        #     For example: "projects/123456/locations/us-central1/jobs/job01".
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. A system generated unique ID (in UUID4 format) for the Job.
        # @!attribute [rw] priority
        #   @return [::Integer]
        #     Priority of the Job.
        #     The valid value range is [0, 100).
        #     A job with higher priority value is more likely to run earlier if all other
        #     requirements are satisfied.
        # @!attribute [rw] task_groups
        #   @return [::Array<::Google::Cloud::Batch::V1::TaskGroup>]
        #     Required. TaskGroups in the Job. Only one TaskGroup is supported now.
        # @!attribute [rw] allocation_policy
        #   @return [::Google::Cloud::Batch::V1::AllocationPolicy]
        #     Compute resource allocation for all TaskGroups in the Job.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels for the Job. Labels could be user provided or system generated.
        #     For example,
        #     "labels": {
        #        "department": "finance",
        #        "environment": "test"
        #      }
        #     You can assign up to 64 labels.  [Google Compute Engine label
        #     restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions)
        #     apply.
        #     Label names that start with "goog-" or "google-" are reserved.
        # @!attribute [r] status
        #   @return [::Google::Cloud::Batch::V1::JobStatus]
        #     Output only. Job status. It is read only for users.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. When the Job was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The last time the Job was updated.
        # @!attribute [rw] logs_policy
        #   @return [::Google::Cloud::Batch::V1::LogsPolicy]
        #     Log preservation policy for the Job.
        # @!attribute [rw] notifications
        #   @return [::Array<::Google::Cloud::Batch::V1::JobNotification>]
        #     Notification configurations.
        class Job
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # LogsPolicy describes how outputs from a Job's Tasks (stdout/stderr) will be
        # preserved.
        # @!attribute [rw] destination
        #   @return [::Google::Cloud::Batch::V1::LogsPolicy::Destination]
        #     Where logs should be saved.
        # @!attribute [rw] logs_path
        #   @return [::String]
        #     The path to which logs are saved when the destination = PATH. This can be a
        #     local file path on the VM, or under the mount point of a Persistent Disk or
        #     Filestore, or a Cloud Storage path.
        class LogsPolicy
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The destination (if any) for logs.
          module Destination
            # Logs are not preserved.
            DESTINATION_UNSPECIFIED = 0

            # Logs are streamed to Cloud Logging.
            CLOUD_LOGGING = 1

            # Logs are saved to a file path.
            PATH = 2
          end
        end

        # Job status.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::Batch::V1::JobStatus::State]
        #     Job state
        # @!attribute [rw] status_events
        #   @return [::Array<::Google::Cloud::Batch::V1::StatusEvent>]
        #     Job status events
        # @!attribute [rw] task_groups
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::Batch::V1::JobStatus::TaskGroupStatus}]
        #     Aggregated task status for each TaskGroup in the Job.
        #     The map key is TaskGroup ID.
        # @!attribute [rw] run_duration
        #   @return [::Google::Protobuf::Duration]
        #     The duration of time that the Job spent in status RUNNING.
        class JobStatus
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # VM instance status.
          # @!attribute [rw] machine_type
          #   @return [::String]
          #     The Compute Engine machine type.
          # @!attribute [rw] provisioning_model
          #   @return [::Google::Cloud::Batch::V1::AllocationPolicy::ProvisioningModel]
          #     The VM instance provisioning model.
          # @!attribute [rw] task_pack
          #   @return [::Integer]
          #     The max number of tasks can be assigned to this instance type.
          class InstanceStatus
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Aggregated task status for a TaskGroup.
          # @!attribute [rw] counts
          #   @return [::Google::Protobuf::Map{::String => ::Integer}]
          #     Count of task in each state in the TaskGroup.
          #     The map key is task state name.
          # @!attribute [rw] instances
          #   @return [::Array<::Google::Cloud::Batch::V1::JobStatus::InstanceStatus>]
          #     Status of instances allocated for the TaskGroup.
          class TaskGroupStatus
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::Integer]
            class CountsEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::Batch::V1::JobStatus::TaskGroupStatus]
          class TaskGroupsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Valid Job states.
          module State
            STATE_UNSPECIFIED = 0

            # Job is admitted (validated and persisted) and waiting for resources.
            QUEUED = 1

            # Job is scheduled to run as soon as resource allocation is ready.
            # The resource allocation may happen at a later time but with a high
            # chance to succeed.
            SCHEDULED = 2

            # Resource allocation has been successful. At least one Task in the Job is
            # RUNNING.
            RUNNING = 3

            # All Tasks in the Job have finished successfully.
            SUCCEEDED = 4

            # At least one Task in the Job has failed.
            FAILED = 5

            # The Job will be deleted, but has not been deleted yet. Typically this is
            # because resources used by the Job are still being cleaned up.
            DELETION_IN_PROGRESS = 6
          end
        end

        # Notification configurations.
        # @!attribute [rw] pubsub_topic
        #   @return [::String]
        #     The Pub/Sub topic where notifications like the job state changes
        #     will be published. This topic exist in the same project as the job
        #     and billings will be charged to this project.
        #     If not specified, no Pub/Sub messages will be sent.
        #     Topic format: `projects/{project}/topics/{topic}`.
        # @!attribute [rw] message
        #   @return [::Google::Cloud::Batch::V1::JobNotification::Message]
        #     The attribute requirements of messages to be sent to this Pub/Sub topic.
        #     Without this field, no message will be sent.
        class JobNotification
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Message details.
          # Describe the attribute that a message should have.
          # Without specified message attributes, no message will be sent by default.
          # @!attribute [rw] type
          #   @return [::Google::Cloud::Batch::V1::JobNotification::Type]
          #     The message type.
          # @!attribute [rw] new_job_state
          #   @return [::Google::Cloud::Batch::V1::JobStatus::State]
          #     The new job state.
          # @!attribute [rw] new_task_state
          #   @return [::Google::Cloud::Batch::V1::TaskStatus::State]
          #     The new task state.
          class Message
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The message type.
          module Type
            # Unspecified.
            TYPE_UNSPECIFIED = 0

            # Notify users that the job state has changed.
            JOB_STATE_CHANGED = 1

            # Notify users that the task state has changed.
            TASK_STATE_CHANGED = 2
          end
        end

        # A Job's resource allocation policy describes when, where, and how compute
        # resources should be allocated for the Job.
        # @!attribute [rw] location
        #   @return [::Google::Cloud::Batch::V1::AllocationPolicy::LocationPolicy]
        #     Location where compute resources should be allocated for the Job.
        # @!attribute [rw] instances
        #   @return [::Array<::Google::Cloud::Batch::V1::AllocationPolicy::InstancePolicyOrTemplate>]
        #     Describe instances that can be created by this AllocationPolicy.
        #     Only instances[0] is supported now.
        # @!attribute [rw] service_account
        #   @return [::Google::Cloud::Batch::V1::ServiceAccount]
        #     Service account that VMs will run as.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels applied to all VM instances and other resources
        #     created by AllocationPolicy.
        #     Labels could be user provided or system generated.
        #     You can assign up to 64 labels. [Google Compute Engine label
        #     restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions)
        #     apply.
        #     Label names that start with "goog-" or "google-" are reserved.
        # @!attribute [rw] network
        #   @return [::Google::Cloud::Batch::V1::AllocationPolicy::NetworkPolicy]
        #     The network policy.
        class AllocationPolicy
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] allowed_locations
          #   @return [::Array<::String>]
          #     A list of allowed location names represented by internal URLs.
          #     Each location can be a region or a zone.
          #     Only one region or multiple zones in one region is supported now.
          #     For example,
          #     ["regions/us-central1"] allow VMs in any zones in region us-central1.
          #     ["zones/us-central1-a", "zones/us-central1-c"] only allow VMs
          #     in zones us-central1-a and us-central1-c.
          #     All locations end up in different regions would cause errors.
          #     For example,
          #     ["regions/us-central1", "zones/us-central1-a", "zones/us-central1-b",
          #     "zones/us-west1-a"] contains 2 regions "us-central1" and
          #     "us-west1". An error is expected in this case.
          class LocationPolicy
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A new persistent disk or a local ssd.
          # A VM can only have one local SSD setting but multiple local SSD partitions.
          # https://cloud.google.com/compute/docs/disks#pdspecs.
          # https://cloud.google.com/compute/docs/disks#localssds.
          # @!attribute [rw] image
          #   @return [::String]
          #     Name of a public or custom image used as the data source.
          # @!attribute [rw] snapshot
          #   @return [::String]
          #     Name of a snapshot used as the data source.
          # @!attribute [rw] type
          #   @return [::String]
          #     Disk type as shown in `gcloud compute disk-types list`
          #     For example, "pd-ssd", "pd-standard", "pd-balanced", "local-ssd".
          # @!attribute [rw] size_gb
          #   @return [::Integer]
          #     Disk size in GB.
          #     This field is ignored if `data_source` is `disk` or `image`.
          #     If `type` is `local-ssd`, size_gb should be a multiple of 375GB,
          #     otherwise, the final size will be the next greater multiple of 375 GB.
          # @!attribute [rw] disk_interface
          #   @return [::String]
          #     Local SSDs are available through both "SCSI" and "NVMe" interfaces.
          #     If not indicated, "NVMe" will be the default one for local ssds.
          #     We only support "SCSI" for persistent disks now.
          class Disk
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A new or an existing persistent disk or a local ssd attached to a VM
          # instance.
          # @!attribute [rw] new_disk
          #   @return [::Google::Cloud::Batch::V1::AllocationPolicy::Disk]
          # @!attribute [rw] existing_disk
          #   @return [::String]
          #     Name of an existing PD.
          # @!attribute [rw] device_name
          #   @return [::String]
          #     Device name that the guest operating system will see.
          #     It is used by Runnable.volumes field to mount disks. So please specify
          #     the device_name if you want Batch to help mount the disk, and it should
          #     match the device_name field in volumes.
          class AttachedDisk
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Accelerator describes Compute Engine accelerators to be attached to VMs.
          # @!attribute [rw] type
          #   @return [::String]
          #     The accelerator type. For example, "nvidia-tesla-t4".
          #     See `gcloud compute accelerator-types list`.
          # @!attribute [rw] count
          #   @return [::Integer]
          #     The number of accelerators of this type.
          # @!attribute [rw] install_gpu_drivers
          #   @return [::Boolean]
          #     Deprecated: please use instances[0].install_gpu_drivers instead.
          class Accelerator
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # InstancePolicy describes an instance type and resources attached to each VM
          # created by this InstancePolicy.
          # @!attribute [rw] machine_type
          #   @return [::String]
          #     The Compute Engine machine type.
          # @!attribute [rw] min_cpu_platform
          #   @return [::String]
          #     The minimum CPU platform.
          #     See
          #     `https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform`.
          #     Not yet implemented.
          # @!attribute [rw] provisioning_model
          #   @return [::Google::Cloud::Batch::V1::AllocationPolicy::ProvisioningModel]
          #     The provisioning model.
          # @!attribute [rw] accelerators
          #   @return [::Array<::Google::Cloud::Batch::V1::AllocationPolicy::Accelerator>]
          #     The accelerators attached to each VM instance.
          #     Not yet implemented.
          # @!attribute [rw] disks
          #   @return [::Array<::Google::Cloud::Batch::V1::AllocationPolicy::AttachedDisk>]
          #     Non-boot disks to be attached for each VM created by this InstancePolicy.
          #     New disks will be deleted when the attached VM is deleted.
          class InstancePolicy
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Either an InstancePolicy or an instance template.
          # @!attribute [rw] policy
          #   @return [::Google::Cloud::Batch::V1::AllocationPolicy::InstancePolicy]
          #     InstancePolicy.
          # @!attribute [rw] instance_template
          #   @return [::String]
          #     Name of an instance template used to create VMs.
          #     Named the field as 'instance_template' instead of 'template' to avoid
          #     c++ keyword conflict.
          # @!attribute [rw] install_gpu_drivers
          #   @return [::Boolean]
          #     Set this field true if users want Batch to help fetch drivers from a
          #     third party location and install them for GPUs specified in
          #     policy.accelerators or instance_template on their behalf. Default is
          #     false.
          class InstancePolicyOrTemplate
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A network interface.
          # @!attribute [rw] network
          #   @return [::String]
          #     The URL of the network resource.
          # @!attribute [rw] subnetwork
          #   @return [::String]
          #     The URL of the Subnetwork resource.
          # @!attribute [rw] no_external_ip_address
          #   @return [::Boolean]
          #     Default is false (with an external IP address). Required if
          #     no external public IP address is attached to the VM. If no external
          #     public IP address, additional configuration is required to allow the VM
          #     to access Google Services. See
          #     https://cloud.google.com/vpc/docs/configure-private-google-access and
          #     https://cloud.google.com/nat/docs/gce-example#create-nat for more
          #     information.
          class NetworkInterface
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # NetworkPolicy describes VM instance network configurations.
          # @!attribute [rw] network_interfaces
          #   @return [::Array<::Google::Cloud::Batch::V1::AllocationPolicy::NetworkInterface>]
          #     Network configurations.
          class NetworkPolicy
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Compute Engine VM instance provisioning model.
          module ProvisioningModel
            # Unspecified.
            PROVISIONING_MODEL_UNSPECIFIED = 0

            # Standard VM.
            STANDARD = 1

            # SPOT VM.
            SPOT = 2

            # Preemptible VM (PVM).
            #
            # Above SPOT VM is the preferable model for preemptible VM instances: the
            # old preemptible VM model (indicated by this field) is the older model,
            # and has been migrated to use the SPOT model as the underlying technology.
            # This old model will still be supported.
            PREEMPTIBLE = 3
          end
        end

        # A TaskGroup contains one or multiple Tasks that share the same
        # Runnable but with different runtime parameters.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. TaskGroup name.
        #     The system generates this field based on parent Job name.
        #     For example:
        #     "projects/123456/locations/us-west1/jobs/job01/taskGroups/group01".
        # @!attribute [rw] task_spec
        #   @return [::Google::Cloud::Batch::V1::TaskSpec]
        #     Required. Tasks in the group share the same task spec.
        # @!attribute [rw] task_count
        #   @return [::Integer]
        #     Number of Tasks in the TaskGroup.
        #     default is 1
        # @!attribute [rw] parallelism
        #   @return [::Integer]
        #     Max number of tasks that can run in parallel.
        #     Default to min(task_count, 1000).
        # @!attribute [rw] task_environments
        #   @return [::Array<::Google::Cloud::Batch::V1::Environment>]
        #     An array of environment variable mappings, which are passed to Tasks with
        #     matching indices. If task_environments is used then task_count should
        #     not be specified in the request (and will be ignored). Task count will be
        #     the length of task_environments.
        #
        #     Tasks get a BATCH_TASK_INDEX and BATCH_TASK_COUNT environment variable, in
        #     addition to any environment variables set in task_environments, specifying
        #     the number of Tasks in the Task's parent TaskGroup, and the specific Task's
        #     index in the TaskGroup (0 through BATCH_TASK_COUNT - 1).
        #
        #     task_environments supports up to 200 entries.
        # @!attribute [rw] task_count_per_node
        #   @return [::Integer]
        #     Max number of tasks that can be run on a VM at the same time.
        #     If not specified, the system will decide a value based on available
        #     compute resources on a VM and task requirements.
        # @!attribute [rw] require_hosts_file
        #   @return [::Boolean]
        #     When true, Batch will populate a file with a list of all VMs assigned to
        #     the TaskGroup and set the BATCH_HOSTS_FILE environment variable to the path
        #     of that file. Defaults to false.
        # @!attribute [rw] permissive_ssh
        #   @return [::Boolean]
        #     When true, Batch will configure SSH to allow passwordless login between
        #     VMs running the Batch tasks in the same TaskGroup.
        class TaskGroup
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Carries information about a Google Cloud service account.
        # @!attribute [rw] email
        #   @return [::String]
        #     Email address of the service account. If not specified, the default
        #     Compute Engine service account for the project will be used. If instance
        #     template is being used, the service account has to be specified in the
        #     instance template and it has to match the email field here.
        class ServiceAccount
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
