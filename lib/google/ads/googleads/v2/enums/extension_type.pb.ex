defmodule Google.Ads.Googleads.V2.Enums.ExtensionTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.ExtensionTypeEnum.ExtensionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:NONE, 2)
  field(:APP, 3)
  field(:CALL, 4)
  field(:CALLOUT, 5)
  field(:MESSAGE, 6)
  field(:PRICE, 7)
  field(:PROMOTION, 8)
  field(:SITELINK, 10)
  field(:STRUCTURED_SNIPPET, 11)
  field(:LOCATION, 12)
  field(:AFFILIATE_LOCATION, 13)
end
