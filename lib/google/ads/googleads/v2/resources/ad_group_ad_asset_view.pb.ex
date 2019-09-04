defmodule Google.Ads.Googleads.V2.Resources.AdGroupAdAssetView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad_group_ad: Google.Protobuf.StringValue.t() | nil,
          asset: Google.Protobuf.StringValue.t() | nil,
          field_type: atom | integer,
          policy_summary: Google.Ads.Googleads.V2.Resources.AdGroupAdAssetPolicySummary.t() | nil,
          performance_label: atom | integer
        }
  defstruct [
    :resource_name,
    :ad_group_ad,
    :asset,
    :field_type,
    :policy_summary,
    :performance_label
  ]

  field(:resource_name, 1, type: :string)
  field(:ad_group_ad, 5, type: Google.Protobuf.StringValue)
  field(:asset, 6, type: Google.Protobuf.StringValue)

  field(:field_type, 2,
    type: Google.Ads.Googleads.V2.Enums.AssetFieldTypeEnum.AssetFieldType,
    enum: true
  )

  field(:policy_summary, 3, type: Google.Ads.Googleads.V2.Resources.AdGroupAdAssetPolicySummary)

  field(:performance_label, 4,
    type: Google.Ads.Googleads.V2.Enums.AssetPerformanceLabelEnum.AssetPerformanceLabel,
    enum: true
  )
end

defmodule Google.Ads.Googleads.V2.Resources.AdGroupAdAssetPolicySummary do
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
