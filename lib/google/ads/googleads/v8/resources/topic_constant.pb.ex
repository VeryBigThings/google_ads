defmodule Google.Ads.Googleads.V8.Resources.TopicConstant do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :id, 5, optional: true, type: :int64
  field :topic_constant_parent, 6, optional: true, type: :string
  field :path, 7, repeated: true, type: :string
end
