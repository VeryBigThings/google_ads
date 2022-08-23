defmodule Google.Ads.Googleads.V11.Resources.GroupPlacementView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          placement: String.t(),
          display_name: String.t(),
          target_url: String.t(),
          placement_type: Google.Ads.Googleads.V11.Enums.PlacementTypeEnum.PlacementType.t()
        }

  defstruct resource_name: "",
            placement: "",
            display_name: "",
            target_url: "",
            placement_type: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :placement, 6, type: :string, deprecated: false
  field :display_name, 7, type: :string, json_name: "displayName", deprecated: false
  field :target_url, 8, type: :string, json_name: "targetUrl", deprecated: false

  field :placement_type, 5,
    type: Google.Ads.Googleads.V11.Enums.PlacementTypeEnum.PlacementType,
    json_name: "placementType",
    enum: true,
    deprecated: false
end
