defmodule Google.Ads.Googleads.V10.Common.AdTextAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          pinned_field:
            Google.Ads.Googleads.V10.Enums.ServedAssetFieldTypeEnum.ServedAssetFieldType.t(),
          asset_performance_label:
            Google.Ads.Googleads.V10.Enums.AssetPerformanceLabelEnum.AssetPerformanceLabel.t(),
          policy_summary_info: Google.Ads.Googleads.V10.Common.AdAssetPolicySummary.t() | nil
        }

  defstruct text: "",
            pinned_field: :UNSPECIFIED,
            asset_performance_label: :UNSPECIFIED,
            policy_summary_info: nil

  field :text, 4, type: :string

  field :pinned_field, 2,
    type: Google.Ads.Googleads.V10.Enums.ServedAssetFieldTypeEnum.ServedAssetFieldType,
    json_name: "pinnedField",
    enum: true

  field :asset_performance_label, 5,
    type: Google.Ads.Googleads.V10.Enums.AssetPerformanceLabelEnum.AssetPerformanceLabel,
    json_name: "assetPerformanceLabel",
    enum: true

  field :policy_summary_info, 6,
    type: Google.Ads.Googleads.V10.Common.AdAssetPolicySummary,
    json_name: "policySummaryInfo"
end
defmodule Google.Ads.Googleads.V10.Common.AdImageAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          asset: String.t()
        }

  defstruct asset: ""

  field :asset, 2, type: :string
end
defmodule Google.Ads.Googleads.V10.Common.AdVideoAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          asset: String.t()
        }

  defstruct asset: ""

  field :asset, 2, type: :string
end
defmodule Google.Ads.Googleads.V10.Common.AdMediaBundleAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          asset: String.t()
        }

  defstruct asset: ""

  field :asset, 2, type: :string
end
