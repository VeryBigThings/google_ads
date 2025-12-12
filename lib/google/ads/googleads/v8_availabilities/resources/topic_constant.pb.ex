defmodule Google.Ads.Googleads.V8Availabilities.Resources.TopicConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :id, 5, type: :int64
  field :topic_constant_parent, 6, type: :string
  field :path, 7, repeated: true, type: :string
end
