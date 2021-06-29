defmodule Google.Ads.Googleads.V8Availabilities.Resources.Video do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: String.t(),
          channel_id: String.t(),
          duration_millis: integer,
          title: String.t()
        }

  defstruct [:resource_name, :id, :channel_id, :duration_millis, :title]

  field :resource_name, 1, type: :string
  field :id, 6, type: :string
  field :channel_id, 7, type: :string
  field :duration_millis, 8, type: :int64
  field :title, 9, type: :string
end
