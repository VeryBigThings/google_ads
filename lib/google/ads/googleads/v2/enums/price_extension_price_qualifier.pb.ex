defmodule Google.Ads.Googleads.V2.Enums.PriceExtensionPriceQualifierEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.PriceExtensionPriceQualifierEnum.PriceExtensionPriceQualifier do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:FROM, 2)
  field(:UP_TO, 3)
  field(:AVERAGE, 4)
end
