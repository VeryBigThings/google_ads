defmodule Google.Ads.Googleads.V2.Enums.SharedSetTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.SharedSetTypeEnum.SharedSetType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:NEGATIVE_KEYWORDS, 2)
  field(:NEGATIVE_PLACEMENTS, 3)
end
