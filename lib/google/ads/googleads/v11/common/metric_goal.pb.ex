defmodule Google.Ads.Googleads.V11.Common.MetricGoal do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metric: Google.Ads.Googleads.V11.Enums.ExperimentMetricEnum.ExperimentMetric.t(),
          direction:
            Google.Ads.Googleads.V11.Enums.ExperimentMetricDirectionEnum.ExperimentMetricDirection.t()
        }

  defstruct metric: :UNSPECIFIED,
            direction: :UNSPECIFIED

  field :metric, 1,
    type: Google.Ads.Googleads.V11.Enums.ExperimentMetricEnum.ExperimentMetric,
    enum: true

  field :direction, 2,
    type: Google.Ads.Googleads.V11.Enums.ExperimentMetricDirectionEnum.ExperimentMetricDirection,
    enum: true
end
