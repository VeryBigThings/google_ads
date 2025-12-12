defmodule Google.Ads.Googleads.V4.Resources.AdParameter do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :ad_group_criterion, 2, type: Google.Protobuf.StringValue
  field :parameter_index, 3, type: Google.Protobuf.Int64Value
  field :insertion_text, 4, type: Google.Protobuf.StringValue
end
