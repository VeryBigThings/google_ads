defmodule Google.Ads.Googleads.V7.Common.AdAssetPolicySummary do
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
