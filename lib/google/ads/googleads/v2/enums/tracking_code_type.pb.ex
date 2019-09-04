defmodule Google.Ads.Googleads.V2.Enums.TrackingCodeTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.TrackingCodeTypeEnum.TrackingCodeType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:WEBPAGE, 2)
  field(:WEBPAGE_ONCLICK, 3)
  field(:CLICK_TO_CALL, 4)
  field(:WEBSITE_CALL, 5)
end
