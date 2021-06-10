defmodule Google.Ads.Googleads.V8.Resources.GroupPlacementView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          placement: Google.Protobuf.StringValue.t() | nil,
          display_name: Google.Protobuf.StringValue.t() | nil,
          target_url: Google.Protobuf.StringValue.t() | nil,
          placement_type: Google.Ads.Googleads.V8.Enums.PlacementTypeEnum.PlacementType.t()
        }

  defstruct [:resource_name, :placement, :display_name, :target_url, :placement_type]

  field :resource_name, 1, type: :string
  field :placement, 6, type: Google.Protobuf.StringValue
  field :display_name, 7, type: Google.Protobuf.StringValue
  field :target_url, 8, type: Google.Protobuf.StringValue

  field :placement_type, 5,
    type: Google.Ads.Googleads.V8.Enums.PlacementTypeEnum.PlacementType,
    enum: true
end
