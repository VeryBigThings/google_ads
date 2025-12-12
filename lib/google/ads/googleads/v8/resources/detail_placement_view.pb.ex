defmodule Google.Ads.Googleads.V8.Resources.DetailPlacementView do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :placement, 7, optional: true, type: :string
  field :display_name, 8, optional: true, type: :string
  field :group_placement_target_url, 9, optional: true, type: :string
  field :target_url, 10, optional: true, type: :string

  field :placement_type, 6,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.PlacementTypeEnum.PlacementType,
    enum: true
end
