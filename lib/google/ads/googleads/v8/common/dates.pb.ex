defmodule Google.Ads.Googleads.V8.Common.DateRange do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :start_date, 3, optional: true, type: :string
  field :end_date, 4, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.YearMonthRange do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :start, 1, optional: true, type: Google.Ads.Googleads.V8.Common.YearMonth
  field :end, 2, optional: true, type: Google.Ads.Googleads.V8.Common.YearMonth
end

defmodule Google.Ads.Googleads.V8.Common.YearMonth do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :year, 1, optional: true, type: :int64

  field :month, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.MonthOfYearEnum.MonthOfYear,
    enum: true
end
