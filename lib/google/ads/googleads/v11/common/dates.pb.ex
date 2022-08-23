defmodule Google.Ads.Googleads.V11.Common.DateRange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_date: String.t(),
          end_date: String.t()
        }

  defstruct start_date: "",
            end_date: ""

  field :start_date, 3, type: :string, json_name: "startDate"
  field :end_date, 4, type: :string, json_name: "endDate"
end
defmodule Google.Ads.Googleads.V11.Common.YearMonthRange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start: Google.Ads.Googleads.V11.Common.YearMonth.t() | nil,
          end: Google.Ads.Googleads.V11.Common.YearMonth.t() | nil
        }

  defstruct start: nil,
            end: nil

  field :start, 1, type: Google.Ads.Googleads.V11.Common.YearMonth
  field :end, 2, type: Google.Ads.Googleads.V11.Common.YearMonth
end
defmodule Google.Ads.Googleads.V11.Common.YearMonth do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          year: integer,
          month: Google.Ads.Googleads.V11.Enums.MonthOfYearEnum.MonthOfYear.t()
        }

  defstruct year: 0,
            month: :UNSPECIFIED

  field :year, 1, type: :int64
  field :month, 2, type: Google.Ads.Googleads.V11.Enums.MonthOfYearEnum.MonthOfYear, enum: true
end
