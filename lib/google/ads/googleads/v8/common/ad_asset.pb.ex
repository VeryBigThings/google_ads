defmodule Google.Ads.Googleads.V8.Common.AdTextAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: Google.Protobuf.StringValue.t() | nil,
          pinned_field:
            Google.Ads.Googleads.V8.Enums.ServedAssetFieldTypeEnum.ServedAssetFieldType.t(),
          asset_performance_label:
            Google.Ads.Googleads.V8.Enums.AssetPerformanceLabelEnum.AssetPerformanceLabel.t(),
          policy_summary_info: Google.Ads.Googleads.V8.Common.AdAssetPolicySummary.t() | nil
        }

  defstruct [:text, :pinned_field, :asset_performance_label, :policy_summary_info]

  field :text, 4, type: Google.Protobuf.StringValue

  field :pinned_field, 2,
    type: Google.Ads.Googleads.V8.Enums.ServedAssetFieldTypeEnum.ServedAssetFieldType,
    enum: true

  field :asset_performance_label, 5,
    type: Google.Ads.Googleads.V8.Enums.AssetPerformanceLabelEnum.AssetPerformanceLabel,
    enum: true

  field :policy_summary_info, 6, type: Google.Ads.Googleads.V8.Common.AdAssetPolicySummary
end

defmodule Google.Ads.Googleads.V8.Common.AdImageAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          asset: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:asset]

  field :asset, 2, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V8.Common.AdVideoAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          asset: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:asset]

  field :asset, 2, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V8.Common.AdMediaBundleAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          asset: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:asset]

  field :asset, 2, type: Google.Protobuf.StringValue
end
