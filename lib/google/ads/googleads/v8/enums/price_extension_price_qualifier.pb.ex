defmodule Google.Ads.Googleads.V8.Enums.PriceExtensionPriceQualifierEnum.PriceExtensionPriceQualifier do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto2
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :FROM | :UP_TO | :AVERAGE

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :FROM, 2

  field :UP_TO, 3

  field :AVERAGE, 4
end

defmodule Google.Ads.Googleads.V8.Enums.PriceExtensionPriceQualifierEnum do
  @moduledoc false
  use Protobuf, syntax: :proto2
  @type t :: %__MODULE__{}

  defstruct []
end
