defmodule Google.Ads.Googleads.V8.Resources.AdGroupAdAssetView do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad_group_ad: String.t(),
          asset: String.t(),
          field_type: Google.Ads.Googleads.V8.Enums.AssetFieldTypeEnum.AssetFieldType.t(),
          enabled: boolean,
          policy_summary: Google.Ads.Googleads.V8.Resources.AdGroupAdAssetPolicySummary.t() | nil,
          performance_label:
            Google.Ads.Googleads.V8.Enums.AssetPerformanceLabelEnum.AssetPerformanceLabel.t()
        }

  defstruct [
    :resource_name,
    :ad_group_ad,
    :asset,
    :field_type,
    :enabled,
    :policy_summary,
    :performance_label
  ]

  field :resource_name, 1, optional: true, type: :string
  field :ad_group_ad, 9, optional: true, type: :string
  field :asset, 10, optional: true, type: :string

  field :field_type, 2,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.AssetFieldTypeEnum.AssetFieldType,
    enum: true

  field :enabled, 8, optional: true, type: :bool

  field :policy_summary, 3,
    required: true,
    type: Google.Ads.Googleads.V8.Resources.AdGroupAdAssetPolicySummary

  field :performance_label, 4,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.AssetPerformanceLabelEnum.AssetPerformanceLabel,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Resources.AdGroupAdAssetPolicySummary do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          policy_topic_entries: [Google.Ads.Googleads.V8.Common.PolicyTopicEntry.t()],
          review_status:
            Google.Ads.Googleads.V8.Enums.PolicyReviewStatusEnum.PolicyReviewStatus.t(),
          approval_status:
            Google.Ads.Googleads.V8.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus.t()
        }

  defstruct [:policy_topic_entries, :review_status, :approval_status]

  field :policy_topic_entries, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.PolicyTopicEntry

  field :review_status, 2,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.PolicyReviewStatusEnum.PolicyReviewStatus,
    enum: true

  field :approval_status, 3,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus,
    enum: true
end
