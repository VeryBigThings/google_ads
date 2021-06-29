defmodule Google.Ads.Googleads.V8.Resources.GroupPlacementView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          placement: String.t(),
          display_name: String.t(),
          target_url: String.t(),
          placement_type: Google.Ads.Googleads.V8.Enums.PlacementTypeEnum.PlacementType.t()
        }

  defstruct [:resource_name, :placement, :display_name, :target_url, :placement_type]

  field :resource_name, 1, type: :string
  field :placement, 6, type: :string
  field :display_name, 7, type: :string
  field :target_url, 8, type: :string

  field :placement_type, 5,
    type: Google.Ads.Googleads.V8.Enums.PlacementTypeEnum.PlacementType,
    enum: true
end
