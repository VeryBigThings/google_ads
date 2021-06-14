defmodule Google.Ads.Googleads.V8.Enums.HotelDateSelectionTypeEnum.HotelDateSelectionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto2
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :DEFAULT_SELECTION | :USER_SELECTED

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :DEFAULT_SELECTION, 50

  field :USER_SELECTED, 51
end

defmodule Google.Ads.Googleads.V8.Enums.HotelDateSelectionTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto2
  @type t :: %__MODULE__{}

  defstruct []
end
