defmodule Google.Ads.Googleads.V7.Resources.AdGroupAdAssetView do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :ad_group_ad, 9, type: :string
  field :asset, 10, type: :string

  field :field_type, 2,
    type: Google.Ads.Googleads.V7.Enums.AssetFieldTypeEnum.AssetFieldType,
    enum: true

  field :enabled, 8, type: :bool
  field :policy_summary, 3, type: Google.Ads.Googleads.V7.Resources.AdGroupAdAssetPolicySummary

  field :performance_label, 4,
    type: Google.Ads.Googleads.V7.Enums.AssetPerformanceLabelEnum.AssetPerformanceLabel,
    enum: true
end

defmodule Google.Ads.Googleads.V7.Resources.AdGroupAdAssetPolicySummary do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :policy_topic_entries, 1,
    repeated: true,
    type: Google.Ads.Googleads.V7.Common.PolicyTopicEntry

  field :review_status, 2,
    type: Google.Ads.Googleads.V7.Enums.PolicyReviewStatusEnum.PolicyReviewStatus,
    enum: true

  field :approval_status, 3,
    type: Google.Ads.Googleads.V7.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus,
    enum: true
end
