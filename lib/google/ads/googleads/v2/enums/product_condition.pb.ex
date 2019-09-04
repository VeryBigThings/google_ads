defmodule Google.Ads.Googleads.V2.Enums.ProductConditionEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.ProductConditionEnum.ProductCondition do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:NEW, 3)
  field(:REFURBISHED, 4)
  field(:USED, 5)
end
