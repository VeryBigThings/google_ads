defmodule Google.Ads.Googleads.V4.Resources.AdGroupAdAssetView do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :ad_group_ad, 5, type: Google.Protobuf.StringValue
  field :asset, 6, type: Google.Protobuf.StringValue

  field :field_type, 2,
    type: Google.Ads.Googleads.V4.Enums.AssetFieldTypeEnum.AssetFieldType,
    enum: true

  field :policy_summary, 3, type: Google.Ads.Googleads.V4.Resources.AdGroupAdAssetPolicySummary

  field :performance_label, 4,
    type: Google.Ads.Googleads.V4.Enums.AssetPerformanceLabelEnum.AssetPerformanceLabel,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Resources.AdGroupAdAssetPolicySummary do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :policy_topic_entries, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.PolicyTopicEntry

  field :review_status, 2,
    type: Google.Ads.Googleads.V4.Enums.PolicyReviewStatusEnum.PolicyReviewStatus,
    enum: true

  field :approval_status, 3,
    type: Google.Ads.Googleads.V4.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus,
    enum: true
end
