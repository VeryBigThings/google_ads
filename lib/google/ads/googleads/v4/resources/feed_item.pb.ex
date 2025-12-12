defmodule Google.Ads.Googleads.V4.Resources.FeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :feed, 2, type: Google.Protobuf.StringValue
  field :id, 3, type: Google.Protobuf.Int64Value
  field :start_date_time, 4, type: Google.Protobuf.StringValue
  field :end_date_time, 5, type: Google.Protobuf.StringValue

  field :attribute_values, 6,
    repeated: true,
    type: Google.Ads.Googleads.V4.Resources.FeedItemAttributeValue

  field :geo_targeting_restriction, 7,
    type: Google.Ads.Googleads.V4.Enums.GeoTargetingRestrictionEnum.GeoTargetingRestriction,
    enum: true

  field :url_custom_parameters, 8,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.CustomParameter

  field :status, 9,
    type: Google.Ads.Googleads.V4.Enums.FeedItemStatusEnum.FeedItemStatus,
    enum: true

  field :policy_infos, 10,
    repeated: true,
    type: Google.Ads.Googleads.V4.Resources.FeedItemPlaceholderPolicyInfo
end

defmodule Google.Ads.Googleads.V4.Resources.FeedItemAttributeValue do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :feed_attribute_id, 1, type: Google.Protobuf.Int64Value
  field :integer_value, 2, type: Google.Protobuf.Int64Value
  field :boolean_value, 3, type: Google.Protobuf.BoolValue
  field :string_value, 4, type: Google.Protobuf.StringValue
  field :double_value, 5, type: Google.Protobuf.DoubleValue
  field :price_value, 6, type: Google.Ads.Googleads.V4.Common.Money
  field :integer_values, 7, repeated: true, type: Google.Protobuf.Int64Value
  field :boolean_values, 8, repeated: true, type: Google.Protobuf.BoolValue
  field :string_values, 9, repeated: true, type: Google.Protobuf.StringValue
  field :double_values, 10, repeated: true, type: Google.Protobuf.DoubleValue
end

defmodule Google.Ads.Googleads.V4.Resources.FeedItemPlaceholderPolicyInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :placeholder_type_enum, 10,
    type: Google.Ads.Googleads.V4.Enums.PlaceholderTypeEnum.PlaceholderType,
    enum: true

  field :feed_mapping_resource_name, 2, type: Google.Protobuf.StringValue

  field :review_status, 3,
    type: Google.Ads.Googleads.V4.Enums.PolicyReviewStatusEnum.PolicyReviewStatus,
    enum: true

  field :approval_status, 4,
    type: Google.Ads.Googleads.V4.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus,
    enum: true

  field :policy_topic_entries, 5,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.PolicyTopicEntry

  field :validation_status, 6,
    type: Google.Ads.Googleads.V4.Enums.FeedItemValidationStatusEnum.FeedItemValidationStatus,
    enum: true

  field :validation_errors, 7,
    repeated: true,
    type: Google.Ads.Googleads.V4.Resources.FeedItemValidationError

  field :quality_approval_status, 8,
    type:
      Google.Ads.Googleads.V4.Enums.FeedItemQualityApprovalStatusEnum.FeedItemQualityApprovalStatus,
    enum: true

  field :quality_disapproval_reasons, 9,
    repeated: true,
    type:
      Google.Ads.Googleads.V4.Enums.FeedItemQualityDisapprovalReasonEnum.FeedItemQualityDisapprovalReason,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Resources.FeedItemValidationError do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :validation_error, 1,
    type: Google.Ads.Googleads.V4.Errors.FeedItemValidationErrorEnum.FeedItemValidationError,
    enum: true

  field :description, 2, type: Google.Protobuf.StringValue
  field :feed_attribute_ids, 3, repeated: true, type: Google.Protobuf.Int64Value
  field :extra_info, 5, type: Google.Protobuf.StringValue
end
