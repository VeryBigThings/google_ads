defmodule Google.Ads.Googleads.V11.Resources.AdGroupAd do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          status: Google.Ads.Googleads.V11.Enums.AdGroupAdStatusEnum.AdGroupAdStatus.t(),
          ad_group: String.t(),
          ad: Google.Ads.Googleads.V11.Resources.Ad.t() | nil,
          policy_summary: Google.Ads.Googleads.V11.Resources.AdGroupAdPolicySummary.t() | nil,
          ad_strength: Google.Ads.Googleads.V11.Enums.AdStrengthEnum.AdStrength.t(),
          action_items: [String.t()],
          labels: [String.t()]
        }

  defstruct resource_name: "",
            status: :UNSPECIFIED,
            ad_group: "",
            ad: nil,
            policy_summary: nil,
            ad_strength: :UNSPECIFIED,
            action_items: [],
            labels: []

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :status, 3,
    type: Google.Ads.Googleads.V11.Enums.AdGroupAdStatusEnum.AdGroupAdStatus,
    enum: true

  field :ad_group, 9, type: :string, json_name: "adGroup", deprecated: false
  field :ad, 5, type: Google.Ads.Googleads.V11.Resources.Ad, deprecated: false

  field :policy_summary, 6,
    type: Google.Ads.Googleads.V11.Resources.AdGroupAdPolicySummary,
    json_name: "policySummary",
    deprecated: false

  field :ad_strength, 7,
    type: Google.Ads.Googleads.V11.Enums.AdStrengthEnum.AdStrength,
    json_name: "adStrength",
    enum: true,
    deprecated: false

  field :action_items, 13,
    repeated: true,
    type: :string,
    json_name: "actionItems",
    deprecated: false

  field :labels, 10, repeated: true, type: :string, deprecated: false
end
defmodule Google.Ads.Googleads.V11.Resources.AdGroupAdPolicySummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy_topic_entries: [Google.Ads.Googleads.V11.Common.PolicyTopicEntry.t()],
          review_status:
            Google.Ads.Googleads.V11.Enums.PolicyReviewStatusEnum.PolicyReviewStatus.t(),
          approval_status:
            Google.Ads.Googleads.V11.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus.t()
        }

  defstruct policy_topic_entries: [],
            review_status: :UNSPECIFIED,
            approval_status: :UNSPECIFIED

  field :policy_topic_entries, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.PolicyTopicEntry,
    json_name: "policyTopicEntries",
    deprecated: false

  field :review_status, 2,
    type: Google.Ads.Googleads.V11.Enums.PolicyReviewStatusEnum.PolicyReviewStatus,
    json_name: "reviewStatus",
    enum: true,
    deprecated: false

  field :approval_status, 3,
    type: Google.Ads.Googleads.V11.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus,
    json_name: "approvalStatus",
    enum: true,
    deprecated: false
end
