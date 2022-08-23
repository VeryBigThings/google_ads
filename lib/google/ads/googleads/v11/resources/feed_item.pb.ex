defmodule Google.Ads.Googleads.V11.Resources.FeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          feed: String.t(),
          id: integer,
          start_date_time: String.t(),
          end_date_time: String.t(),
          attribute_values: [Google.Ads.Googleads.V11.Resources.FeedItemAttributeValue.t()],
          geo_targeting_restriction:
            Google.Ads.Googleads.V11.Enums.GeoTargetingRestrictionEnum.GeoTargetingRestriction.t(),
          url_custom_parameters: [Google.Ads.Googleads.V11.Common.CustomParameter.t()],
          status: Google.Ads.Googleads.V11.Enums.FeedItemStatusEnum.FeedItemStatus.t(),
          policy_infos: [Google.Ads.Googleads.V11.Resources.FeedItemPlaceholderPolicyInfo.t()]
        }

  defstruct resource_name: "",
            feed: "",
            id: 0,
            start_date_time: "",
            end_date_time: "",
            attribute_values: [],
            geo_targeting_restriction: :UNSPECIFIED,
            url_custom_parameters: [],
            status: :UNSPECIFIED,
            policy_infos: []

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :feed, 11, type: :string, deprecated: false
  field :id, 12, type: :int64, deprecated: false
  field :start_date_time, 13, type: :string, json_name: "startDateTime"
  field :end_date_time, 14, type: :string, json_name: "endDateTime"

  field :attribute_values, 6,
    repeated: true,
    type: Google.Ads.Googleads.V11.Resources.FeedItemAttributeValue,
    json_name: "attributeValues"

  field :geo_targeting_restriction, 7,
    type: Google.Ads.Googleads.V11.Enums.GeoTargetingRestrictionEnum.GeoTargetingRestriction,
    json_name: "geoTargetingRestriction",
    enum: true

  field :url_custom_parameters, 8,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.CustomParameter,
    json_name: "urlCustomParameters"

  field :status, 9,
    type: Google.Ads.Googleads.V11.Enums.FeedItemStatusEnum.FeedItemStatus,
    enum: true,
    deprecated: false

  field :policy_infos, 10,
    repeated: true,
    type: Google.Ads.Googleads.V11.Resources.FeedItemPlaceholderPolicyInfo,
    json_name: "policyInfos",
    deprecated: false
end
defmodule Google.Ads.Googleads.V11.Resources.FeedItemAttributeValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feed_attribute_id: integer,
          integer_value: integer,
          boolean_value: boolean,
          string_value: String.t(),
          double_value: float | :infinity | :negative_infinity | :nan,
          price_value: Google.Ads.Googleads.V11.Common.Money.t() | nil,
          integer_values: [integer],
          boolean_values: [boolean],
          string_values: [String.t()],
          double_values: [float | :infinity | :negative_infinity | :nan]
        }

  defstruct feed_attribute_id: 0,
            integer_value: 0,
            boolean_value: false,
            string_value: "",
            double_value: 0.0,
            price_value: nil,
            integer_values: [],
            boolean_values: [],
            string_values: [],
            double_values: []

  field :feed_attribute_id, 11, type: :int64, json_name: "feedAttributeId"
  field :integer_value, 12, type: :int64, json_name: "integerValue"
  field :boolean_value, 13, type: :bool, json_name: "booleanValue"
  field :string_value, 14, type: :string, json_name: "stringValue"
  field :double_value, 15, type: :double, json_name: "doubleValue"
  field :price_value, 6, type: Google.Ads.Googleads.V11.Common.Money, json_name: "priceValue"
  field :integer_values, 16, repeated: true, type: :int64, json_name: "integerValues"
  field :boolean_values, 17, repeated: true, type: :bool, json_name: "booleanValues"
  field :string_values, 18, repeated: true, type: :string, json_name: "stringValues"
  field :double_values, 19, repeated: true, type: :double, json_name: "doubleValues"
end
defmodule Google.Ads.Googleads.V11.Resources.FeedItemPlaceholderPolicyInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          placeholder_type_enum:
            Google.Ads.Googleads.V11.Enums.PlaceholderTypeEnum.PlaceholderType.t(),
          feed_mapping_resource_name: String.t(),
          review_status:
            Google.Ads.Googleads.V11.Enums.PolicyReviewStatusEnum.PolicyReviewStatus.t(),
          approval_status:
            Google.Ads.Googleads.V11.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus.t(),
          policy_topic_entries: [Google.Ads.Googleads.V11.Common.PolicyTopicEntry.t()],
          validation_status:
            Google.Ads.Googleads.V11.Enums.FeedItemValidationStatusEnum.FeedItemValidationStatus.t(),
          validation_errors: [Google.Ads.Googleads.V11.Resources.FeedItemValidationError.t()],
          quality_approval_status:
            Google.Ads.Googleads.V11.Enums.FeedItemQualityApprovalStatusEnum.FeedItemQualityApprovalStatus.t(),
          quality_disapproval_reasons: [
            Google.Ads.Googleads.V11.Enums.FeedItemQualityDisapprovalReasonEnum.FeedItemQualityDisapprovalReason.t()
          ]
        }

  defstruct placeholder_type_enum: :UNSPECIFIED,
            feed_mapping_resource_name: "",
            review_status: :UNSPECIFIED,
            approval_status: :UNSPECIFIED,
            policy_topic_entries: [],
            validation_status: :UNSPECIFIED,
            validation_errors: [],
            quality_approval_status: :UNSPECIFIED,
            quality_disapproval_reasons: []

  field :placeholder_type_enum, 10,
    type: Google.Ads.Googleads.V11.Enums.PlaceholderTypeEnum.PlaceholderType,
    json_name: "placeholderTypeEnum",
    enum: true,
    deprecated: false

  field :feed_mapping_resource_name, 11,
    type: :string,
    json_name: "feedMappingResourceName",
    deprecated: false

  field :review_status, 3,
    type: Google.Ads.Googleads.V11.Enums.PolicyReviewStatusEnum.PolicyReviewStatus,
    json_name: "reviewStatus",
    enum: true,
    deprecated: false

  field :approval_status, 4,
    type: Google.Ads.Googleads.V11.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus,
    json_name: "approvalStatus",
    enum: true,
    deprecated: false

  field :policy_topic_entries, 5,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.PolicyTopicEntry,
    json_name: "policyTopicEntries",
    deprecated: false

  field :validation_status, 6,
    type: Google.Ads.Googleads.V11.Enums.FeedItemValidationStatusEnum.FeedItemValidationStatus,
    json_name: "validationStatus",
    enum: true,
    deprecated: false

  field :validation_errors, 7,
    repeated: true,
    type: Google.Ads.Googleads.V11.Resources.FeedItemValidationError,
    json_name: "validationErrors",
    deprecated: false

  field :quality_approval_status, 8,
    type:
      Google.Ads.Googleads.V11.Enums.FeedItemQualityApprovalStatusEnum.FeedItemQualityApprovalStatus,
    json_name: "qualityApprovalStatus",
    enum: true,
    deprecated: false

  field :quality_disapproval_reasons, 9,
    repeated: true,
    type:
      Google.Ads.Googleads.V11.Enums.FeedItemQualityDisapprovalReasonEnum.FeedItemQualityDisapprovalReason,
    json_name: "qualityDisapprovalReasons",
    enum: true,
    deprecated: false
end
defmodule Google.Ads.Googleads.V11.Resources.FeedItemValidationError do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          validation_error:
            Google.Ads.Googleads.V11.Errors.FeedItemValidationErrorEnum.FeedItemValidationError.t(),
          description: String.t(),
          feed_attribute_ids: [integer],
          extra_info: String.t()
        }

  defstruct validation_error: :UNSPECIFIED,
            description: "",
            feed_attribute_ids: [],
            extra_info: ""

  field :validation_error, 1,
    type: Google.Ads.Googleads.V11.Errors.FeedItemValidationErrorEnum.FeedItemValidationError,
    json_name: "validationError",
    enum: true,
    deprecated: false

  field :description, 6, type: :string, deprecated: false

  field :feed_attribute_ids, 7,
    repeated: true,
    type: :int64,
    json_name: "feedAttributeIds",
    deprecated: false

  field :extra_info, 8, type: :string, json_name: "extraInfo", deprecated: false
end
