defmodule Google.Ads.Googleads.V8Availabilities.Resources.DetailPlacementView do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :placement, 7, type: :string
  field :display_name, 8, type: :string
  field :group_placement_target_url, 9, type: :string
  field :target_url, 10, type: :string

  field :placement_type, 6,
    type: Google.Ads.Googleads.V8Availabilities.Enums.PlacementTypeEnum.PlacementType,
    enum: true
end
