defmodule Google.Ads.Googleads.V7.Resources.AdGroupAd do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string

  field :status, 3,
    type: Google.Ads.Googleads.V7.Enums.AdGroupAdStatusEnum.AdGroupAdStatus,
    enum: true

  field :ad_group, 9, type: :string
  field :ad, 5, type: Google.Ads.Googleads.V7.Resources.Ad
  field :policy_summary, 6, type: Google.Ads.Googleads.V7.Resources.AdGroupAdPolicySummary
  field :ad_strength, 7, type: Google.Ads.Googleads.V7.Enums.AdStrengthEnum.AdStrength, enum: true
  field :labels, 10, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V7.Resources.AdGroupAdPolicySummary do
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
