defmodule Google.Ads.Googleads.V8.Resources.AdGroupAdAssetView do
  @moduledoc false
  use Protobuf, syntax: :proto2



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
