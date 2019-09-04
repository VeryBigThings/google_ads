defmodule Google.Ads.Googleads.V2.Enums.ListingCustomAttributeIndexEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.ListingCustomAttributeIndexEnum.ListingCustomAttributeIndex do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:INDEX0, 7)
  field(:INDEX1, 8)
  field(:INDEX2, 9)
  field(:INDEX3, 10)
  field(:INDEX4, 11)
end
