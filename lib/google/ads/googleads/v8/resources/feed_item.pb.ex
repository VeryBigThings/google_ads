defmodule Google.Ads.Googleads.V8.Resources.FeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          feed: Google.Protobuf.StringValue.t() | nil,
          id: Google.Protobuf.Int64Value.t() | nil,
          start_date_time: Google.Protobuf.StringValue.t() | nil,
          end_date_time: Google.Protobuf.StringValue.t() | nil,
          attribute_values: [Google.Ads.Googleads.V8.Resources.FeedItemAttributeValue.t()],
          geo_targeting_restriction:
            Google.Ads.Googleads.V8.Enums.GeoTargetingRestrictionEnum.GeoTargetingRestriction.t(),
          url_custom_parameters: [Google.Ads.Googleads.V8.Common.CustomParameter.t()],
          status: Google.Ads.Googleads.V8.Enums.FeedItemStatusEnum.FeedItemStatus.t(),
          policy_infos: [Google.Ads.Googleads.V8.Resources.FeedItemPlaceholderPolicyInfo.t()]
        }

  defstruct [
    :resource_name,
    :feed,
    :id,
    :start_date_time,
    :end_date_time,
    :attribute_values,
    :geo_targeting_restriction,
    :url_custom_parameters,
    :status,
    :policy_infos
  ]

  field :resource_name, 1, type: :string
  field :feed, 11, type: Google.Protobuf.StringValue
  field :id, 12, type: Google.Protobuf.Int64Value
  field :start_date_time, 13, type: Google.Protobuf.StringValue
  field :end_date_time, 14, type: Google.Protobuf.StringValue

  field :attribute_values, 6,
    repeated: true,
    type: Google.Ads.Googleads.V8.Resources.FeedItemAttributeValue

  field :geo_targeting_restriction, 7,
    type: Google.Ads.Googleads.V8.Enums.GeoTargetingRestrictionEnum.GeoTargetingRestriction,
    enum: true

  field :url_custom_parameters, 8,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.CustomParameter

  field :status, 9,
    type: Google.Ads.Googleads.V8.Enums.FeedItemStatusEnum.FeedItemStatus,
    enum: true

  field :policy_infos, 10,
    repeated: true,
    type: Google.Ads.Googleads.V8.Resources.FeedItemPlaceholderPolicyInfo
end

defmodule Google.Ads.Googleads.V8.Resources.FeedItemAttributeValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feed_attribute_id: Google.Protobuf.Int64Value.t() | nil,
          integer_value: Google.Protobuf.Int64Value.t() | nil,
          boolean_value: Google.Protobuf.BoolValue.t() | nil,
          string_value: Google.Protobuf.StringValue.t() | nil,
          double_value: Google.Protobuf.DoubleValue.t() | nil,
          price_value: Google.Ads.Googleads.V8.Common.Money.t() | nil,
          integer_values: [integer],
          boolean_values: [boolean],
          string_values: [String.t()],
          double_values: [float | :infinity | :negative_infinity | :nan]
        }

  defstruct [
    :feed_attribute_id,
    :integer_value,
    :boolean_value,
    :string_value,
    :double_value,
    :price_value,
    :integer_values,
    :boolean_values,
    :string_values,
    :double_values
  ]

  field :feed_attribute_id, 11, type: Google.Protobuf.Int64Value
  field :integer_value, 12, type: Google.Protobuf.Int64Value
  field :boolean_value, 13, type: Google.Protobuf.BoolValue
  field :string_value, 14, type: Google.Protobuf.StringValue
  field :double_value, 15, type: Google.Protobuf.DoubleValue
  field :price_value, 6, type: Google.Ads.Googleads.V8.Common.Money
  field :integer_values, 16, repeated: true, type: :int64
  field :boolean_values, 17, repeated: true, type: :bool
  field :string_values, 18, repeated: true, type: :string
  field :double_values, 19, repeated: true, type: :double
end

defmodule Google.Ads.Googleads.V8.Resources.FeedItemPlaceholderPolicyInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          placeholder_type_enum:
            Google.Ads.Googleads.V8.Enums.PlaceholderTypeEnum.PlaceholderType.t(),
          feed_mapping_resource_name: Google.Protobuf.StringValue.t() | nil,
          review_status:
            Google.Ads.Googleads.V8.Enums.PolicyReviewStatusEnum.PolicyReviewStatus.t(),
          approval_status:
            Google.Ads.Googleads.V8.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus.t(),
          policy_topic_entries: [Google.Ads.Googleads.V8.Common.PolicyTopicEntry.t()],
          validation_status:
            Google.Ads.Googleads.V8.Enums.FeedItemValidationStatusEnum.FeedItemValidationStatus.t(),
          validation_errors: [Google.Ads.Googleads.V8.Resources.FeedItemValidationError.t()],
          quality_approval_status:
            Google.Ads.Googleads.V8.Enums.FeedItemQualityApprovalStatusEnum.FeedItemQualityApprovalStatus.t(),
          quality_disapproval_reasons: [
            [
              Google.Ads.Googleads.V8.Enums.FeedItemQualityDisapprovalReasonEnum.FeedItemQualityDisapprovalReason.t()
            ]
          ]
        }

  defstruct [
    :placeholder_type_enum,
    :feed_mapping_resource_name,
    :review_status,
    :approval_status,
    :policy_topic_entries,
    :validation_status,
    :validation_errors,
    :quality_approval_status,
    :quality_disapproval_reasons
  ]

  field :placeholder_type_enum, 10,
    type: Google.Ads.Googleads.V8.Enums.PlaceholderTypeEnum.PlaceholderType,
    enum: true

  field :feed_mapping_resource_name, 11, type: Google.Protobuf.StringValue

  field :review_status, 3,
    type: Google.Ads.Googleads.V8.Enums.PolicyReviewStatusEnum.PolicyReviewStatus,
    enum: true

  field :approval_status, 4,
    type: Google.Ads.Googleads.V8.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus,
    enum: true

  field :policy_topic_entries, 5,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.PolicyTopicEntry

  field :validation_status, 6,
    type: Google.Ads.Googleads.V8.Enums.FeedItemValidationStatusEnum.FeedItemValidationStatus,
    enum: true

  field :validation_errors, 7,
    repeated: true,
    type: Google.Ads.Googleads.V8.Resources.FeedItemValidationError

  field :quality_approval_status, 8,
    type:
      Google.Ads.Googleads.V8.Enums.FeedItemQualityApprovalStatusEnum.FeedItemQualityApprovalStatus,
    enum: true

  field :quality_disapproval_reasons, 9,
    repeated: true,
    type:
      Google.Ads.Googleads.V8.Enums.FeedItemQualityDisapprovalReasonEnum.FeedItemQualityDisapprovalReason,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Resources.FeedItemValidationError do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          validation_error:
            Google.Ads.Googleads.V8.Errors.FeedItemValidationErrorEnum.FeedItemValidationError.t(),
          description: Google.Protobuf.StringValue.t() | nil,
          feed_attribute_ids: [integer],
          extra_info: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:validation_error, :description, :feed_attribute_ids, :extra_info]

  field :validation_error, 1,
    type: Google.Ads.Googleads.V8.Errors.FeedItemValidationErrorEnum.FeedItemValidationError,
    enum: true

  field :description, 6, type: Google.Protobuf.StringValue
  field :feed_attribute_ids, 7, repeated: true, type: :int64
  field :extra_info, 8, type: Google.Protobuf.StringValue
end
