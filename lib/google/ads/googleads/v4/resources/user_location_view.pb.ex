defmodule Google.Ads.Googleads.V4.Resources.UserLocationView do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :country_criterion_id, 2, type: Google.Protobuf.Int64Value
  field :targeting_location, 3, type: Google.Protobuf.BoolValue
end
