defmodule Google.Ads.Googleads.V11.Enums.AssetSourceEnum.AssetSource do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ADVERTISER | :AUTOMATICALLY_CREATED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ADVERTISER, 2
  field :AUTOMATICALLY_CREATED, 3
end
defmodule Google.Ads.Googleads.V11.Enums.AssetSourceEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
