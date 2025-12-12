defmodule Google.Ads.Googleads.V7.Resources.FeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :feed, 11, type: :string
  field :id, 12, type: :int64
  field :start_date_time, 13, type: :string
  field :end_date_time, 14, type: :string

  field :attribute_values, 6,
    repeated: true,
    type: Google.Ads.Googleads.V7.Resources.FeedItemAttributeValue

  field :geo_targeting_restriction, 7,
    type: Google.Ads.Googleads.V7.Enums.GeoTargetingRestrictionEnum.GeoTargetingRestriction,
    enum: true

  field :url_custom_parameters, 8,
    repeated: true,
    type: Google.Ads.Googleads.V7.Common.CustomParameter

  field :status, 9,
    type: Google.Ads.Googleads.V7.Enums.FeedItemStatusEnum.FeedItemStatus,
    enum: true

  field :policy_infos, 10,
    repeated: true,
    type: Google.Ads.Googleads.V7.Resources.FeedItemPlaceholderPolicyInfo
end

defmodule Google.Ads.Googleads.V7.Resources.FeedItemAttributeValue do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :feed_attribute_id, 11, type: :int64
  field :integer_value, 12, type: :int64
  field :boolean_value, 13, type: :bool
  field :string_value, 14, type: :string
  field :double_value, 15, type: :double
  field :price_value, 6, type: Google.Ads.Googleads.V7.Common.Money
  field :integer_values, 16, repeated: true, type: :int64
  field :boolean_values, 17, repeated: true, type: :bool
  field :string_values, 18, repeated: true, type: :string
  field :double_values, 19, repeated: true, type: :double
end

defmodule Google.Ads.Googleads.V7.Resources.FeedItemPlaceholderPolicyInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :placeholder_type_enum, 10,
    type: Google.Ads.Googleads.V7.Enums.PlaceholderTypeEnum.PlaceholderType,
    enum: true

  field :feed_mapping_resource_name, 11, type: :string

  field :review_status, 3,
    type: Google.Ads.Googleads.V7.Enums.PolicyReviewStatusEnum.PolicyReviewStatus,
    enum: true

  field :approval_status, 4,
    type: Google.Ads.Googleads.V7.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus,
    enum: true

  field :policy_topic_entries, 5,
    repeated: true,
    type: Google.Ads.Googleads.V7.Common.PolicyTopicEntry

  field :validation_status, 6,
    type: Google.Ads.Googleads.V7.Enums.FeedItemValidationStatusEnum.FeedItemValidationStatus,
    enum: true

  field :validation_errors, 7,
    repeated: true,
    type: Google.Ads.Googleads.V7.Resources.FeedItemValidationError

  field :quality_approval_status, 8,
    type:
      Google.Ads.Googleads.V7.Enums.FeedItemQualityApprovalStatusEnum.FeedItemQualityApprovalStatus,
    enum: true

  field :quality_disapproval_reasons, 9,
    repeated: true,
    type:
      Google.Ads.Googleads.V7.Enums.FeedItemQualityDisapprovalReasonEnum.FeedItemQualityDisapprovalReason,
    enum: true
end

defmodule Google.Ads.Googleads.V7.Resources.FeedItemValidationError do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :validation_error, 1,
    type: Google.Ads.Googleads.V7.Errors.FeedItemValidationErrorEnum.FeedItemValidationError,
    enum: true

  field :description, 6, type: :string
  field :feed_attribute_ids, 7, repeated: true, type: :int64
  field :extra_info, 8, type: :string
end
