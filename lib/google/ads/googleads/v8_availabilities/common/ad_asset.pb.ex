defmodule Google.Ads.Googleads.V8Availabilities.Common.AdTextAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          pinned_field:
            Google.Ads.Googleads.V8Availabilities.Enums.ServedAssetFieldTypeEnum.ServedAssetFieldType.t(),
          asset_performance_label:
            Google.Ads.Googleads.V8Availabilities.Enums.AssetPerformanceLabelEnum.AssetPerformanceLabel.t(),
          policy_summary_info: Google.Ads.Googleads.V8Availabilities.Common.AdAssetPolicySummary.t() | nil
        }

  defstruct [:text, :pinned_field, :asset_performance_label, :policy_summary_info]

  field :text, 4, type: :string

  field :pinned_field, 2,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ServedAssetFieldTypeEnum.ServedAssetFieldType,
    enum: true

  field :asset_performance_label, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.AssetPerformanceLabelEnum.AssetPerformanceLabel,
    enum: true

  field :policy_summary_info, 6, type: Google.Ads.Googleads.V8Availabilities.Common.AdAssetPolicySummary
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.AdImageAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          asset: String.t()
        }

  defstruct [:asset]

  field :asset, 2, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.AdVideoAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          asset: String.t()
        }

  defstruct [:asset]

  field :asset, 2, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.AdMediaBundleAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          asset: String.t()
        }

  defstruct [:asset]

  field :asset, 2, type: :string
end
