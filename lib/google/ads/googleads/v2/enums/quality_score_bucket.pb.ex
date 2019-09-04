defmodule Google.Ads.Googleads.V2.Enums.QualityScoreBucketEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.QualityScoreBucketEnum.QualityScoreBucket do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:BELOW_AVERAGE, 2)
  field(:AVERAGE, 3)
  field(:ABOVE_AVERAGE, 4)
end
