defmodule Google.Ads.Googleads.V8.Enums.KeywordPlanAggregateMetricTypeEnum.KeywordPlanAggregateMetricType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto2
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :DEVICE

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :DEVICE, 2
end

defmodule Google.Ads.Googleads.V8.Enums.KeywordPlanAggregateMetricTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto2
  @type t :: %__MODULE__{}

  defstruct []
end
