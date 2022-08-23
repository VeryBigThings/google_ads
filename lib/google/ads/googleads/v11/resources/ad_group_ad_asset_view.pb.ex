defmodule Google.Ads.Googleads.V11.Resources.AdGroupAdAssetView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad_group_ad: String.t(),
          asset: String.t(),
          field_type: Google.Ads.Googleads.V11.Enums.AssetFieldTypeEnum.AssetFieldType.t(),
          enabled: boolean,
          policy_summary:
            Google.Ads.Googleads.V11.Resources.AdGroupAdAssetPolicySummary.t() | nil,
          performance_label:
            Google.Ads.Googleads.V11.Enums.AssetPerformanceLabelEnum.AssetPerformanceLabel.t()
        }

  defstruct resource_name: "",
            ad_group_ad: "",
            asset: "",
            field_type: :UNSPECIFIED,
            enabled: false,
            policy_summary: nil,
            performance_label: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :ad_group_ad, 9, type: :string, json_name: "adGroupAd", deprecated: false
  field :asset, 10, type: :string, deprecated: false

  field :field_type, 2,
    type: Google.Ads.Googleads.V11.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "fieldType",
    enum: true,
    deprecated: false

  field :enabled, 8, type: :bool, deprecated: false

  field :policy_summary, 3,
    type: Google.Ads.Googleads.V11.Resources.AdGroupAdAssetPolicySummary,
    json_name: "policySummary",
    deprecated: false

  field :performance_label, 4,
    type: Google.Ads.Googleads.V11.Enums.AssetPerformanceLabelEnum.AssetPerformanceLabel,
    json_name: "performanceLabel",
    enum: true,
    deprecated: false
end
defmodule Google.Ads.Googleads.V11.Resources.AdGroupAdAssetPolicySummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy_topic_entries: [Google.Ads.Googleads.V11.Common.PolicyTopicEntry.t()],
          review_status:
            Google.Ads.Googleads.V11.Enums.PolicyReviewStatusEnum.PolicyReviewStatus.t(),
          approval_status:
            Google.Ads.Googleads.V11.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus.t()
        }

  defstruct policy_topic_entries: [],
            review_status: :UNSPECIFIED,
            approval_status: :UNSPECIFIED

  field :policy_topic_entries, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.PolicyTopicEntry,
    json_name: "policyTopicEntries",
    deprecated: false

  field :review_status, 2,
    type: Google.Ads.Googleads.V11.Enums.PolicyReviewStatusEnum.PolicyReviewStatus,
    json_name: "reviewStatus",
    enum: true,
    deprecated: false

  field :approval_status, 3,
    type: Google.Ads.Googleads.V11.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus,
    json_name: "approvalStatus",
    enum: true,
    deprecated: false
end
