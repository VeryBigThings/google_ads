defmodule Google.Ads.Googleads.V2.Enums.CustomInterestTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.CustomInterestTypeEnum.CustomInterestType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:CUSTOM_AFFINITY, 2)
  field(:CUSTOM_INTENT, 3)
end
