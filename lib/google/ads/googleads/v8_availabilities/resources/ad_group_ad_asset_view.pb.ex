defmodule Google.Ads.Googleads.V8Availabilities.Resources.AdGroupAdAssetView do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :ad_group_ad, 9, type: :string
  field :asset, 10, type: :string

  field :field_type, 2,
    type: Google.Ads.Googleads.V8Availabilities.Enums.AssetFieldTypeEnum.AssetFieldType,
    enum: true

  field :enabled, 8, type: :bool
  field :policy_summary, 3, type: Google.Ads.Googleads.V8Availabilities.Resources.AdGroupAdAssetPolicySummary

  field :performance_label, 4,
    type: Google.Ads.Googleads.V8Availabilities.Enums.AssetPerformanceLabelEnum.AssetPerformanceLabel,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Resources.AdGroupAdAssetPolicySummary do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :policy_topic_entries, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicEntry

  field :review_status, 2,
    type: Google.Ads.Googleads.V8Availabilities.Enums.PolicyReviewStatusEnum.PolicyReviewStatus,
    enum: true

  field :approval_status, 3,
    type: Google.Ads.Googleads.V8Availabilities.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus,
    enum: true
end
