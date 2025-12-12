defmodule Google.Ads.Googleads.V4.Resources.KeywordPlan do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value
  field :name, 3, type: Google.Protobuf.StringValue
  field :forecast_period, 4, type: Google.Ads.Googleads.V4.Resources.KeywordPlanForecastPeriod
end

defmodule Google.Ads.Googleads.V4.Resources.KeywordPlanForecastPeriod do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :interval, 0

  field :date_interval, 1,
    type:
      Google.Ads.Googleads.V4.Enums.KeywordPlanForecastIntervalEnum.KeywordPlanForecastInterval,
    enum: true,
    oneof: 0

  field :date_range, 2, type: Google.Ads.Googleads.V4.Common.DateRange, oneof: 0
end
