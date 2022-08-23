defmodule Google.Ads.Googleads.V11.Resources.AdGroupAdAssetCombinationView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          served_assets: [Google.Ads.Googleads.V11.Common.AssetUsage.t()],
          enabled: boolean
        }

  defstruct resource_name: "",
            served_assets: [],
            enabled: false

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :served_assets, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.AssetUsage,
    json_name: "servedAssets",
    deprecated: false

  field :enabled, 3, type: :bool, deprecated: false
end
