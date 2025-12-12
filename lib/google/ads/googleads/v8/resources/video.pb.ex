defmodule Google.Ads.Googleads.V8.Resources.Video do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :id, 6, optional: true, type: :string
  field :channel_id, 7, optional: true, type: :string
  field :duration_millis, 8, optional: true, type: :int64
  field :title, 9, optional: true, type: :string
end
