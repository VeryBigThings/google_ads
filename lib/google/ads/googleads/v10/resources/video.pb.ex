defmodule Google.Ads.Googleads.V10.Resources.Video do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: String.t(),
          channel_id: String.t(),
          duration_millis: integer,
          title: String.t()
        }

  defstruct resource_name: "",
            id: "",
            channel_id: "",
            duration_millis: 0,
            title: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 6, type: :string, deprecated: false
  field :channel_id, 7, type: :string, json_name: "channelId", deprecated: false
  field :duration_millis, 8, type: :int64, json_name: "durationMillis", deprecated: false
  field :title, 9, type: :string, deprecated: false
end
