defmodule Google.Ads.Googleads.V7.Common.DateRange do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :start_date, 3, type: :string
  field :end_date, 4, type: :string
end

defmodule Google.Ads.Googleads.V7.Common.YearMonthRange do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :start, 1, type: Google.Ads.Googleads.V7.Common.YearMonth
  field :end, 2, type: Google.Ads.Googleads.V7.Common.YearMonth
end

defmodule Google.Ads.Googleads.V7.Common.YearMonth do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :year, 1, type: :int64
  field :month, 2, type: Google.Ads.Googleads.V7.Enums.MonthOfYearEnum.MonthOfYear, enum: true
end
