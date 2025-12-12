defmodule Google.Ads.Googleads.V8.Resources.FeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :feed, 11, optional: true, type: :string
  field :id, 12, optional: true, type: :int64
  field :start_date_time, 13, optional: true, type: :string
  field :end_date_time, 14, optional: true, type: :string

  field :attribute_values, 6,
    repeated: true,
    type: Google.Ads.Googleads.V8.Resources.FeedItemAttributeValue

  field :geo_targeting_restriction, 7,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.GeoTargetingRestrictionEnum.GeoTargetingRestriction,
    enum: true

  field :url_custom_parameters, 8,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.CustomParameter

  field :status, 9,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.FeedItemStatusEnum.FeedItemStatus,
    enum: true

  field :policy_infos, 10,
    repeated: true,
    type: Google.Ads.Googleads.V8.Resources.FeedItemPlaceholderPolicyInfo
end

defmodule Google.Ads.Googleads.V8.Resources.FeedItemAttributeValue do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :feed_attribute_id, 11, optional: true, type: :int64
  field :integer_value, 12, optional: true, type: :int64
  field :boolean_value, 13, optional: true, type: :bool
  field :string_value, 14, optional: true, type: :string
  field :double_value, 15, optional: true, type: :double
  field :price_value, 6, required: true, type: Google.Ads.Googleads.V8.Common.Money
  field :integer_values, 16, repeated: true, type: :int64
  field :boolean_values, 17, repeated: true, type: :bool
  field :string_values, 18, repeated: true, type: :string
  field :double_values, 19, repeated: true, type: :double
end

defmodule Google.Ads.Googleads.V8.Resources.FeedItemPlaceholderPolicyInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :placeholder_type_enum, 10,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.PlaceholderTypeEnum.PlaceholderType,
    enum: true

  field :feed_mapping_resource_name, 11, optional: true, type: :string

  field :review_status, 3,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.PolicyReviewStatusEnum.PolicyReviewStatus,
    enum: true

  field :approval_status, 4,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus,
    enum: true

  field :policy_topic_entries, 5,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.PolicyTopicEntry

  field :validation_status, 6,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.FeedItemValidationStatusEnum.FeedItemValidationStatus,
    enum: true

  field :validation_errors, 7,
    repeated: true,
    type: Google.Ads.Googleads.V8.Resources.FeedItemValidationError

  field :quality_approval_status, 8,
    required: true,
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
  use Protobuf, syntax: :proto2



  field :validation_error, 1,
    required: true,
    type: Google.Ads.Googleads.V8.Errors.FeedItemValidationErrorEnum.FeedItemValidationError,
    enum: true

  field :description, 6, optional: true, type: :string
  field :feed_attribute_ids, 7, repeated: true, type: :int64
  field :extra_info, 8, optional: true, type: :string
end
