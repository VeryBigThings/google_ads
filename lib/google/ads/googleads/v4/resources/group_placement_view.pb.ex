defmodule Google.Ads.Googleads.V4.Resources.GroupPlacementView do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :placement, 2, type: Google.Protobuf.StringValue
  field :display_name, 3, type: Google.Protobuf.StringValue
  field :target_url, 4, type: Google.Protobuf.StringValue

  field :placement_type, 5,
    type: Google.Ads.Googleads.V4.Enums.PlacementTypeEnum.PlacementType,
    enum: true
end
