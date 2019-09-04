defmodule Google.Ads.Googleads.V2.Enums.SimulationTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.SimulationTypeEnum.SimulationType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:CPC_BID, 2)
  field(:CPV_BID, 3)
  field(:TARGET_CPA, 4)
  field(:BID_MODIFIER, 5)
end
