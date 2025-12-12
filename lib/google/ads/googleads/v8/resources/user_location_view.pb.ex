defmodule Google.Ads.Googleads.V8.Resources.UserLocationView do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :country_criterion_id, 4, optional: true, type: :int64
  field :targeting_location, 5, optional: true, type: :bool
end
