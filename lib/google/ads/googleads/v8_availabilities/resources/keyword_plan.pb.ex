defmodule Google.Ads.Googleads.V8.Resources.KeywordPlan do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          forecast_period: Google.Ads.Googleads.V8.Resources.KeywordPlanForecastPeriod.t() | nil
        }

  defstruct [:resource_name, :id, :name, :forecast_period]

  field :resource_name, 1, type: :string
  field :id, 5, type: :int64
  field :name, 6, type: :string
  field :forecast_period, 4, type: Google.Ads.Googleads.V8.Resources.KeywordPlanForecastPeriod
end

defmodule Google.Ads.Googleads.V8.Resources.KeywordPlanForecastPeriod do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          interval: {atom, any}
        }

  defstruct [:interval]

  oneof :interval, 0

  field :date_interval, 1,
    type:
      Google.Ads.Googleads.V8.Enums.KeywordPlanForecastIntervalEnum.KeywordPlanForecastInterval,
    enum: true,
    oneof: 0

  field :date_range, 2, type: Google.Ads.Googleads.V8.Common.DateRange, oneof: 0
end
