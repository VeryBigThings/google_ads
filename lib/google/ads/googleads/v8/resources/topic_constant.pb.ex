defmodule Google.Ads.Googleads.V8.Resources.TopicConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          topic_constant_parent: Google.Protobuf.StringValue.t() | nil,
          path: [String.t()]
        }

  defstruct [:resource_name, :id, :topic_constant_parent, :path]

  field :resource_name, 1, type: :string
  field :id, 5, type: Google.Protobuf.Int64Value
  field :topic_constant_parent, 6, type: Google.Protobuf.StringValue
  field :path, 7, repeated: true, type: :string
end
