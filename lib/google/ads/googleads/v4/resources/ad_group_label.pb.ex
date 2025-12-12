defmodule Google.Ads.Googleads.V4.Resources.AdGroupLabel do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :ad_group, 2, type: Google.Protobuf.StringValue
  field :label, 3, type: Google.Protobuf.StringValue
end
