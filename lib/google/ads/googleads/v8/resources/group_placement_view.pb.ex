defmodule Google.Ads.Googleads.V8.Resources.GroupPlacementView do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :placement, 6, optional: true, type: :string
  field :display_name, 7, optional: true, type: :string
  field :target_url, 8, optional: true, type: :string

  field :placement_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.PlacementTypeEnum.PlacementType,
    enum: true
end
