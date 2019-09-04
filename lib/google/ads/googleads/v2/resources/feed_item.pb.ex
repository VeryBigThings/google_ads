defmodule Google.Ads.Googleads.V2.Resources.FeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          feed: Google.Protobuf.StringValue.t() | nil,
          id: Google.Protobuf.Int64Value.t() | nil,
          start_date_time: Google.Protobuf.StringValue.t() | nil,
          end_date_time: Google.Protobuf.StringValue.t() | nil,
          attribute_values: [Google.Ads.Googleads.V2.Resources.FeedItemAttributeValue.t()],
          geo_targeting_restriction: atom | integer,
          url_custom_parameters: [Google.Ads.Googleads.V2.Common.CustomParameter.t()],
          status: atom | integer,
          policy_infos: [Google.Ads.Googleads.V2.Resources.FeedItemPlaceholderPolicyInfo.t()]
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

  field(:resource_name, 1, type: :string)
  field(:feed, 2, type: Google.Protobuf.StringValue)
  field(:id, 3, type: Google.Protobuf.Int64Value)
  field(:start_date_time, 4, type: Google.Protobuf.StringValue)
  field(:end_date_time, 5, type: Google.Protobuf.StringValue)

  field(:attribute_values, 6,
    repeated: true,
    type: Google.Ads.Googleads.V2.Resources.FeedItemAttributeValue
  )

  field(:geo_targeting_restriction, 7,
    type: Google.Ads.Googleads.V2.Enums.GeoTargetingRestrictionEnum.GeoTargetingRestriction,
    enum: true
  )

  field(:url_custom_parameters, 8,
    repeated: true,
    type: Google.Ads.Googleads.V2.Common.CustomParameter
  )

  field(:status, 9,
    type: Google.Ads.Googleads.V2.Enums.FeedItemStatusEnum.FeedItemStatus,
    enum: true
  )

  field(:policy_infos, 10,
    repeated: true,
    type: Google.Ads.Googleads.V2.Resources.FeedItemPlaceholderPolicyInfo
  )
end

defmodule Google.Ads.Googleads.V2.Resources.FeedItemAttributeValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feed_attribute_id: Google.Protobuf.Int64Value.t() | nil,
          integer_value: Google.Protobuf.Int64Value.t() | nil,
          boolean_value: Google.Protobuf.BoolValue.t() | nil,
          string_value: Google.Protobuf.StringValue.t() | nil,
          double_value: Google.Protobuf.DoubleValue.t() | nil,
          price_value: Google.Ads.Googleads.V2.Common.Money.t() | nil,
          integer_values: [Google.Protobuf.Int64Value.t()],
          boolean_values: [Google.Protobuf.BoolValue.t()],
          string_values: [Google.Protobuf.StringValue.t()],
          double_values: [Google.Protobuf.DoubleValue.t()]
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

  field(:feed_attribute_id, 1, type: Google.Protobuf.Int64Value)
  field(:integer_value, 2, type: Google.Protobuf.Int64Value)
  field(:boolean_value, 3, type: Google.Protobuf.BoolValue)
  field(:string_value, 4, type: Google.Protobuf.StringValue)
  field(:double_value, 5, type: Google.Protobuf.DoubleValue)
  field(:price_value, 6, type: Google.Ads.Googleads.V2.Common.Money)
  field(:integer_values, 7, repeated: true, type: Google.Protobuf.Int64Value)
  field(:boolean_values, 8, repeated: true, type: Google.Protobuf.BoolValue)
  field(:string_values, 9, repeated: true, type: Google.Protobuf.StringValue)
  field(:double_values, 10, repeated: true, type: Google.Protobuf.DoubleValue)
end

defmodule Google.Ads.Googleads.V2.Resources.FeedItemPlaceholderPolicyInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          placeholder_type_enum: atom | integer,
          feed_mapping_resource_name: Google.Protobuf.StringValue.t() | nil,
          review_status: atom | integer,
          approval_status: atom | integer,
          policy_topic_entries: [Google.Ads.Googleads.V2.Common.PolicyTopicEntry.t()],
          validation_status: atom | integer,
          validation_errors: [Google.Ads.Googleads.V2.Resources.FeedItemValidationError.t()],
          quality_approval_status: atom | integer,
          quality_disapproval_reasons: [atom | integer]
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

  field(:placeholder_type_enum, 10,
    type: Google.Ads.Googleads.V2.Enums.PlaceholderTypeEnum.PlaceholderType,
    enum: true
  )

  field(:feed_mapping_resource_name, 2, type: Google.Protobuf.StringValue)

  field(:review_status, 3,
    type: Google.Ads.Googleads.V2.Enums.PolicyReviewStatusEnum.PolicyReviewStatus,
    enum: true
  )

  field(:approval_status, 4,
    type: Google.Ads.Googleads.V2.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus,
    enum: true
  )

  field(:policy_topic_entries, 5,
    repeated: true,
    type: Google.Ads.Googleads.V2.Common.PolicyTopicEntry
  )

  field(:validation_status, 6,
    type: Google.Ads.Googleads.V2.Enums.FeedItemValidationStatusEnum.FeedItemValidationStatus,
    enum: true
  )

  field(:validation_errors, 7,
    repeated: true,
    type: Google.Ads.Googleads.V2.Resources.FeedItemValidationError
  )

  field(:quality_approval_status, 8,
    type:
      Google.Ads.Googleads.V2.Enums.FeedItemQualityApprovalStatusEnum.FeedItemQualityApprovalStatus,
    enum: true
  )

  field(:quality_disapproval_reasons, 9,
    repeated: true,
    type:
      Google.Ads.Googleads.V2.Enums.FeedItemQualityDisapprovalReasonEnum.FeedItemQualityDisapprovalReason,
    enum: true
  )
end

defmodule Google.Ads.Googleads.V2.Resources.FeedItemValidationError do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          validation_error: atom | integer,
          description: Google.Protobuf.StringValue.t() | nil,
          feed_attribute_ids: [Google.Protobuf.Int64Value.t()],
          extra_info: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [:validation_error, :description, :feed_attribute_ids, :extra_info]

  field(:validation_error, 1,
    type: Google.Ads.Googleads.V2.Errors.FeedItemValidationErrorEnum.FeedItemValidationError,
    enum: true
  )

  field(:description, 2, type: Google.Protobuf.StringValue)
  field(:feed_attribute_ids, 3, repeated: true, type: Google.Protobuf.Int64Value)
  field(:extra_info, 5, type: Google.Protobuf.StringValue)
end
