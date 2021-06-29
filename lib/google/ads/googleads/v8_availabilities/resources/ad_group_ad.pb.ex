defmodule Google.Ads.Googleads.V8Availabilities.Resources.AdGroupAd do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          status: Google.Ads.Googleads.V8Availabilities.Enums.AdGroupAdStatusEnum.AdGroupAdStatus.t(),
          ad_group: String.t(),
          ad: Google.Ads.Googleads.V8Availabilities.Resources.Ad.t() | nil,
          policy_summary: Google.Ads.Googleads.V8Availabilities.Resources.AdGroupAdPolicySummary.t() | nil,
          ad_strength: Google.Ads.Googleads.V8Availabilities.Enums.AdStrengthEnum.AdStrength.t(),
          labels: [String.t()]
        }

  defstruct [:resource_name, :status, :ad_group, :ad, :policy_summary, :ad_strength, :labels]

  field :resource_name, 1, type: :string

  field :status, 3,
    type: Google.Ads.Googleads.V8Availabilities.Enums.AdGroupAdStatusEnum.AdGroupAdStatus,
    enum: true

  field :ad_group, 9, type: :string
  field :ad, 5, type: Google.Ads.Googleads.V8Availabilities.Resources.Ad
  field :policy_summary, 6, type: Google.Ads.Googleads.V8Availabilities.Resources.AdGroupAdPolicySummary
  field :ad_strength, 7, type: Google.Ads.Googleads.V8Availabilities.Enums.AdStrengthEnum.AdStrength, enum: true
  field :labels, 10, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Resources.AdGroupAdPolicySummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy_topic_entries: [Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicEntry.t()],
          review_status:
            Google.Ads.Googleads.V8Availabilities.Enums.PolicyReviewStatusEnum.PolicyReviewStatus.t(),
          approval_status:
            Google.Ads.Googleads.V8Availabilities.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus.t()
        }

  defstruct [:policy_topic_entries, :review_status, :approval_status]

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
