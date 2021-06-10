defmodule Google.Ads.Googleads.V8.Resources.Video do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.StringValue.t() | nil,
          channel_id: Google.Protobuf.StringValue.t() | nil,
          duration_millis: Google.Protobuf.Int64Value.t() | nil,
          title: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:resource_name, :id, :channel_id, :duration_millis, :title]

  field :resource_name, 1, type: :string
  field :id, 6, type: Google.Protobuf.StringValue
  field :channel_id, 7, type: Google.Protobuf.StringValue
  field :duration_millis, 8, type: Google.Protobuf.Int64Value
  field :title, 9, type: Google.Protobuf.StringValue
end
