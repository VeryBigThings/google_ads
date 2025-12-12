defmodule Google.Ads.Googleads.V4.Common.ClickLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :city, 1, type: Google.Protobuf.StringValue
  field :country, 2, type: Google.Protobuf.StringValue
  field :metro, 3, type: Google.Protobuf.StringValue
  field :most_specific, 4, type: Google.Protobuf.StringValue
  field :region, 5, type: Google.Protobuf.StringValue
end
