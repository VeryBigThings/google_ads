defmodule Google.Ads.Googleads.V8.Common.DateRange do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          start_date: String.t(),
          end_date: String.t()
        }

  defstruct [:start_date, :end_date]

  field :start_date, 3, optional: true, type: :string
  field :end_date, 4, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.YearMonthRange do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          start: Google.Ads.Googleads.V8.Common.YearMonth.t() | nil,
          end: Google.Ads.Googleads.V8.Common.YearMonth.t() | nil
        }

  defstruct [:start, :end]

  field :start, 1, optional: true, type: Google.Ads.Googleads.V8.Common.YearMonth
  field :end, 2, optional: true, type: Google.Ads.Googleads.V8.Common.YearMonth
end

defmodule Google.Ads.Googleads.V8.Common.YearMonth do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          year: integer,
          month: Google.Ads.Googleads.V8.Enums.MonthOfYearEnum.MonthOfYear.t()
        }

  defstruct [:year, :month]

  field :year, 1, optional: true, type: :int64

  field :month, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.MonthOfYearEnum.MonthOfYear,
    enum: true
end
