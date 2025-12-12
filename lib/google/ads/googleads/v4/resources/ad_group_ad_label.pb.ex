defmodule Google.Ads.Googleads.V4.Resources.AdGroupAdLabel do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :ad_group_ad, 2, type: Google.Protobuf.StringValue
  field :label, 3, type: Google.Protobuf.StringValue
end
