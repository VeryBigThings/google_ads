defmodule Google.Ads.Googleads.V10.Resources.TopicConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          topic_constant_parent: String.t(),
          path: [String.t()]
        }

  defstruct resource_name: "",
            id: 0,
            topic_constant_parent: "",
            path: []

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 5, type: :int64, deprecated: false

  field :topic_constant_parent, 6,
    type: :string,
    json_name: "topicConstantParent",
    deprecated: false

  field :path, 7, repeated: true, type: :string, deprecated: false
end
