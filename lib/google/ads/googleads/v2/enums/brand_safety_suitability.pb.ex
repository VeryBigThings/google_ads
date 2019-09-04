defmodule Google.Ads.Googleads.V2.Enums.BrandSafetySuitabilityEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.BrandSafetySuitabilityEnum.BrandSafetySuitability do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:EXPANDED_INVENTORY, 2)
  field(:STANDARD_INVENTORY, 3)
  field(:LIMITED_INVENTORY, 4)
end
