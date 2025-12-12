defmodule Google.Ads.Googleads.V4.Resources.TopicConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value
  field :topic_constant_parent, 3, type: Google.Protobuf.StringValue
  field :path, 4, repeated: true, type: Google.Protobuf.StringValue
end
