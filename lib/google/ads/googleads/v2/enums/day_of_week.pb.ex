defmodule Google.Ads.Googleads.V2.Enums.DayOfWeekEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.DayOfWeekEnum.DayOfWeek do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:MONDAY, 2)
  field(:TUESDAY, 3)
  field(:WEDNESDAY, 4)
  field(:THURSDAY, 5)
  field(:FRIDAY, 6)
  field(:SATURDAY, 7)
  field(:SUNDAY, 8)
end
