defmodule Google.Ads.Googleads.V2.Enums.ConversionActionTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.ConversionActionTypeEnum.ConversionActionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:AD_CALL, 2)
  field(:CLICK_TO_CALL, 3)
  field(:GOOGLE_PLAY_DOWNLOAD, 4)
  field(:GOOGLE_PLAY_IN_APP_PURCHASE, 5)
  field(:UPLOAD_CALLS, 6)
  field(:UPLOAD_CLICKS, 7)
  field(:WEBPAGE, 8)
  field(:WEBSITE_CALL, 9)
end
