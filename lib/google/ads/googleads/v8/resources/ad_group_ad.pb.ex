defmodule Google.Ads.Googleads.V8.Resources.AdGroupAd do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string

  field :status, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.AdGroupAdStatusEnum.AdGroupAdStatus,
    enum: true

  field :ad_group, 9, optional: true, type: :string
  field :ad, 5, optional: true, type: Google.Ads.Googleads.V8.Resources.Ad

  field :policy_summary, 6,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AdGroupAdPolicySummary

  field :ad_strength, 7,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.AdStrengthEnum.AdStrength,
    enum: true

  field :labels, 10, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Resources.AdGroupAdPolicySummary do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :policy_topic_entries, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.PolicyTopicEntry

  field :review_status, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.PolicyReviewStatusEnum.PolicyReviewStatus,
    enum: true

  field :approval_status, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus,
    enum: true
end
