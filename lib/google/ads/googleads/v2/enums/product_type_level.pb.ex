defmodule Google.Ads.Googleads.V2.Enums.ProductTypeLevelEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.ProductTypeLevelEnum.ProductTypeLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:LEVEL1, 7)
  field(:LEVEL2, 8)
  field(:LEVEL3, 9)
  field(:LEVEL4, 10)
  field(:LEVEL5, 11)
end
