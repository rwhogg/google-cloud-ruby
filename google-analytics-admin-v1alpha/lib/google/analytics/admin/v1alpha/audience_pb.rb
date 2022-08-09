# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/analytics/admin/v1alpha/audience.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/analytics/admin/v1alpha/audience.proto", :syntax => :proto3) do
    add_message "google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter" do
      optional :field_name, :string, 1
      optional :at_any_point_in_time, :bool, 6
      optional :in_any_n_day_period, :int32, 7
      oneof :one_filter do
        optional :string_filter, :message, 2, "google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.StringFilter"
        optional :in_list_filter, :message, 3, "google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.InListFilter"
        optional :numeric_filter, :message, 4, "google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.NumericFilter"
        optional :between_filter, :message, 5, "google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.BetweenFilter"
      end
    end
    add_message "google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.StringFilter" do
      optional :match_type, :enum, 1, "google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.StringFilter.MatchType"
      optional :value, :string, 2
      optional :case_sensitive, :bool, 3
    end
    add_enum "google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.StringFilter.MatchType" do
      value :MATCH_TYPE_UNSPECIFIED, 0
      value :EXACT, 1
      value :BEGINS_WITH, 2
      value :ENDS_WITH, 3
      value :CONTAINS, 4
      value :FULL_REGEXP, 5
      value :PARTIAL_REGEXP, 6
    end
    add_message "google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.InListFilter" do
      repeated :values, :string, 1
      optional :case_sensitive, :bool, 2
    end
    add_message "google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.NumericValue" do
      oneof :one_value do
        optional :int64_value, :int64, 1
        optional :double_value, :double, 2
      end
    end
    add_message "google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.NumericFilter" do
      optional :operation, :enum, 1, "google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.NumericFilter.Operation"
      optional :value, :message, 2, "google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.NumericValue"
    end
    add_enum "google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.NumericFilter.Operation" do
      value :OPERATION_UNSPECIFIED, 0
      value :EQUAL, 1
      value :LESS_THAN, 2
      value :LESS_THAN_OR_EQUAL, 3
      value :GREATER_THAN, 4
      value :GREATER_THAN_OR_EQUAL, 5
    end
    add_message "google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.BetweenFilter" do
      optional :from_value, :message, 1, "google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.NumericValue"
      optional :to_value, :message, 2, "google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.NumericValue"
    end
    add_message "google.analytics.admin.v1alpha.AudienceEventFilter" do
      optional :event_name, :string, 1
      optional :event_parameter_filter_expression, :message, 2, "google.analytics.admin.v1alpha.AudienceFilterExpression"
    end
    add_message "google.analytics.admin.v1alpha.AudienceFilterExpression" do
      oneof :expr do
        optional :and_group, :message, 1, "google.analytics.admin.v1alpha.AudienceFilterExpressionList"
        optional :or_group, :message, 2, "google.analytics.admin.v1alpha.AudienceFilterExpressionList"
        optional :not_expression, :message, 3, "google.analytics.admin.v1alpha.AudienceFilterExpression"
        optional :dimension_or_metric_filter, :message, 4, "google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter"
        optional :event_filter, :message, 5, "google.analytics.admin.v1alpha.AudienceEventFilter"
      end
    end
    add_message "google.analytics.admin.v1alpha.AudienceFilterExpressionList" do
      repeated :filter_expressions, :message, 1, "google.analytics.admin.v1alpha.AudienceFilterExpression"
    end
    add_message "google.analytics.admin.v1alpha.AudienceSimpleFilter" do
      optional :scope, :enum, 1, "google.analytics.admin.v1alpha.AudienceFilterScope"
      optional :filter_expression, :message, 2, "google.analytics.admin.v1alpha.AudienceFilterExpression"
    end
    add_message "google.analytics.admin.v1alpha.AudienceSequenceFilter" do
      optional :scope, :enum, 1, "google.analytics.admin.v1alpha.AudienceFilterScope"
      optional :sequence_maximum_duration, :message, 2, "google.protobuf.Duration"
      repeated :sequence_steps, :message, 3, "google.analytics.admin.v1alpha.AudienceSequenceFilter.AudienceSequenceStep"
    end
    add_message "google.analytics.admin.v1alpha.AudienceSequenceFilter.AudienceSequenceStep" do
      optional :scope, :enum, 1, "google.analytics.admin.v1alpha.AudienceFilterScope"
      optional :immediately_follows, :bool, 2
      optional :constraint_duration, :message, 3, "google.protobuf.Duration"
      optional :filter_expression, :message, 4, "google.analytics.admin.v1alpha.AudienceFilterExpression"
    end
    add_message "google.analytics.admin.v1alpha.AudienceFilterClause" do
      optional :clause_type, :enum, 1, "google.analytics.admin.v1alpha.AudienceFilterClause.AudienceClauseType"
      oneof :filter do
        optional :simple_filter, :message, 2, "google.analytics.admin.v1alpha.AudienceSimpleFilter"
        optional :sequence_filter, :message, 3, "google.analytics.admin.v1alpha.AudienceSequenceFilter"
      end
    end
    add_enum "google.analytics.admin.v1alpha.AudienceFilterClause.AudienceClauseType" do
      value :AUDIENCE_CLAUSE_TYPE_UNSPECIFIED, 0
      value :INCLUDE, 1
      value :EXCLUDE, 2
    end
    add_message "google.analytics.admin.v1alpha.AudienceEventTrigger" do
      optional :event_name, :string, 1
      optional :log_condition, :enum, 2, "google.analytics.admin.v1alpha.AudienceEventTrigger.LogCondition"
    end
    add_enum "google.analytics.admin.v1alpha.AudienceEventTrigger.LogCondition" do
      value :LOG_CONDITION_UNSPECIFIED, 0
      value :AUDIENCE_JOINED, 1
      value :AUDIENCE_MEMBERSHIP_RENEWED, 2
    end
    add_message "google.analytics.admin.v1alpha.Audience" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :description, :string, 3
      optional :membership_duration_days, :int32, 4
      optional :ads_personalization_enabled, :bool, 5
      optional :event_trigger, :message, 6, "google.analytics.admin.v1alpha.AudienceEventTrigger"
      optional :exclusion_duration_mode, :enum, 7, "google.analytics.admin.v1alpha.Audience.AudienceExclusionDurationMode"
      repeated :filter_clauses, :message, 8, "google.analytics.admin.v1alpha.AudienceFilterClause"
    end
    add_enum "google.analytics.admin.v1alpha.Audience.AudienceExclusionDurationMode" do
      value :AUDIENCE_EXCLUSION_DURATION_MODE_UNSPECIFIED, 0
      value :EXCLUDE_TEMPORARILY, 1
      value :EXCLUDE_PERMANENTLY, 2
    end
    add_enum "google.analytics.admin.v1alpha.AudienceFilterScope" do
      value :AUDIENCE_FILTER_SCOPE_UNSPECIFIED, 0
      value :AUDIENCE_FILTER_SCOPE_WITHIN_SAME_EVENT, 1
      value :AUDIENCE_FILTER_SCOPE_WITHIN_SAME_SESSION, 2
      value :AUDIENCE_FILTER_SCOPE_ACROSS_ALL_SESSIONS, 3
    end
  end
end

module Google
  module Analytics
    module Admin
      module V1alpha
        AudienceDimensionOrMetricFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter").msgclass
        AudienceDimensionOrMetricFilter::StringFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.StringFilter").msgclass
        AudienceDimensionOrMetricFilter::StringFilter::MatchType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.StringFilter.MatchType").enummodule
        AudienceDimensionOrMetricFilter::InListFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.InListFilter").msgclass
        AudienceDimensionOrMetricFilter::NumericValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.NumericValue").msgclass
        AudienceDimensionOrMetricFilter::NumericFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.NumericFilter").msgclass
        AudienceDimensionOrMetricFilter::NumericFilter::Operation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.NumericFilter.Operation").enummodule
        AudienceDimensionOrMetricFilter::BetweenFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceDimensionOrMetricFilter.BetweenFilter").msgclass
        AudienceEventFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceEventFilter").msgclass
        AudienceFilterExpression = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceFilterExpression").msgclass
        AudienceFilterExpressionList = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceFilterExpressionList").msgclass
        AudienceSimpleFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceSimpleFilter").msgclass
        AudienceSequenceFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceSequenceFilter").msgclass
        AudienceSequenceFilter::AudienceSequenceStep = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceSequenceFilter.AudienceSequenceStep").msgclass
        AudienceFilterClause = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceFilterClause").msgclass
        AudienceFilterClause::AudienceClauseType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceFilterClause.AudienceClauseType").enummodule
        AudienceEventTrigger = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceEventTrigger").msgclass
        AudienceEventTrigger::LogCondition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceEventTrigger.LogCondition").enummodule
        Audience = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.Audience").msgclass
        Audience::AudienceExclusionDurationMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.Audience.AudienceExclusionDurationMode").enummodule
        AudienceFilterScope = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.admin.v1alpha.AudienceFilterScope").enummodule
      end
    end
  end
end