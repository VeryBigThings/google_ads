defmodule Google.Ads.Googleads.V13.Common.DateRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_date, 3, type: :string, json_name: "startDate"
  field :end_date, 4, type: :string, json_name: "endDate"
end

defmodule Google.Ads.Googleads.V13.Common.YearMonthRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start, 1, type: Google.Ads.Googleads.V13.Common.YearMonth
  field :end, 2, type: Google.Ads.Googleads.V13.Common.YearMonth
end

defmodule Google.Ads.Googleads.V13.Common.YearMonth do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :year, 1, type: :int64
  field :month, 2, type: Google.Ads.Googleads.V13.Enums.MonthOfYearEnum.MonthOfYear, enum: true
end