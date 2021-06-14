defmodule Google.Ads.Googleads.V8.Enums.CallTrackingDisplayLocationEnum.CallTrackingDisplayLocation do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto2
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :AD | :LANDING_PAGE

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :AD, 2

  field :LANDING_PAGE, 3
end

defmodule Google.Ads.Googleads.V8.Enums.CallTrackingDisplayLocationEnum do
  @moduledoc false
  use Protobuf, syntax: :proto2
  @type t :: %__MODULE__{}

  defstruct []
end
