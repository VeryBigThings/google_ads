defmodule Google.Ads.Googleads.V7.Resources.GroupPlacementView do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :placement, 6, type: :string
  field :display_name, 7, type: :string
  field :target_url, 8, type: :string

  field :placement_type, 5,
    type: Google.Ads.Googleads.V7.Enums.PlacementTypeEnum.PlacementType,
    enum: true
end
