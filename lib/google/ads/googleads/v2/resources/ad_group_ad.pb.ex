defmodule Google.Ads.Googleads.V2.Resources.AdGroupAd do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          status: atom | integer,
          ad_group: Google.Protobuf.StringValue.t() | nil,
          ad: Google.Ads.Googleads.V2.Resources.Ad.t() | nil,
          policy_summary: Google.Ads.Googleads.V2.Resources.AdGroupAdPolicySummary.t() | nil,
          ad_strength: atom | integer
        }
  defstruct [:resource_name, :status, :ad_group, :ad, :policy_summary, :ad_strength]

  field(:resource_name, 1, type: :string)

  field(:status, 3,
    type: Google.Ads.Googleads.V2.Enums.AdGroupAdStatusEnum.AdGroupAdStatus,
    enum: true
  )

  field(:ad_group, 4, type: Google.Protobuf.StringValue)
  field(:ad, 5, type: Google.Ads.Googleads.V2.Resources.Ad)
  field(:policy_summary, 6, type: Google.Ads.Googleads.V2.Resources.AdGroupAdPolicySummary)

  field(:ad_strength, 7, type: Google.Ads.Googleads.V2.Enums.AdStrengthEnum.AdStrength, enum: true)
end

defmodule Google.Ads.Googleads.V2.Resources.AdGroupAdPolicySummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy_topic_entries: [Google.Ads.Googleads.V2.Common.PolicyTopicEntry.t()],
          review_status: atom | integer,
          approval_status: atom | integer
        }
  defstruct [:policy_topic_entries, :review_status, :approval_status]

  field(:policy_topic_entries, 1,
    repeated: true,
    type: Google.Ads.Googleads.V2.Common.PolicyTopicEntry
  )

  field(:review_status, 2,
    type: Google.Ads.Googleads.V2.Enums.PolicyReviewStatusEnum.PolicyReviewStatus,
    enum: true
  )

  field(:approval_status, 3,
    type: Google.Ads.Googleads.V2.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus,
    enum: true
  )
end
