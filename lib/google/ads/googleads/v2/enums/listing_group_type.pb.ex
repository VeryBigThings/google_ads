defmodule Google.Ads.Googleads.V2.Enums.ListingGroupTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.ListingGroupTypeEnum.ListingGroupType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:SUBDIVISION, 2)
  field(:UNIT, 3)
end
