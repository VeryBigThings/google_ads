defmodule Google.Ads.Googleads.V2.Enums.AppCampaignAppStoreEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.AppCampaignAppStoreEnum.AppCampaignAppStore do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:APPLE_APP_STORE, 2)
  field(:GOOGLE_APP_STORE, 3)
end
