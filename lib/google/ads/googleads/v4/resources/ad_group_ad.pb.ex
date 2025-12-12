defmodule Google.Ads.Googleads.V4.Resources.AdGroupAd do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string

  field :status, 3,
    type: Google.Ads.Googleads.V4.Enums.AdGroupAdStatusEnum.AdGroupAdStatus,
    enum: true

  field :ad_group, 4, type: Google.Protobuf.StringValue
  field :ad, 5, type: Google.Ads.Googleads.V4.Resources.Ad
  field :policy_summary, 6, type: Google.Ads.Googleads.V4.Resources.AdGroupAdPolicySummary
  field :ad_strength, 7, type: Google.Ads.Googleads.V4.Enums.AdStrengthEnum.AdStrength, enum: true
end

defmodule Google.Ads.Googleads.V4.Resources.AdGroupAdPolicySummary do
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
