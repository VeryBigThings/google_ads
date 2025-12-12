defmodule Google.Ads.Googleads.V4.Resources.Video do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.StringValue
  field :channel_id, 3, type: Google.Protobuf.StringValue
  field :duration_millis, 4, type: Google.Protobuf.Int64Value
  field :title, 5, type: Google.Protobuf.StringValue
end
