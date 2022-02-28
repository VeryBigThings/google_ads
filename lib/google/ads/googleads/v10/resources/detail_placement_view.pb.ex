defmodule Google.Ads.Googleads.V10.Resources.DetailPlacementView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          placement: String.t(),
          display_name: String.t(),
          group_placement_target_url: String.t(),
          target_url: String.t(),
          placement_type: Google.Ads.Googleads.V10.Enums.PlacementTypeEnum.PlacementType.t()
        }

  defstruct resource_name: "",
            placement: "",
            display_name: "",
            group_placement_target_url: "",
            target_url: "",
            placement_type: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :placement, 7, type: :string, deprecated: false
  field :display_name, 8, type: :string, json_name: "displayName", deprecated: false

  field :group_placement_target_url, 9,
    type: :string,
    json_name: "groupPlacementTargetUrl",
    deprecated: false

  field :target_url, 10, type: :string, json_name: "targetUrl", deprecated: false

  field :placement_type, 6,
    type: Google.Ads.Googleads.V10.Enums.PlacementTypeEnum.PlacementType,
    json_name: "placementType",
    enum: true,
    deprecated: false
end
