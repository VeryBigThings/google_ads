defmodule Google.Ads.Googleads.V2.Enums.LegacyAppInstallAdAppStoreEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.LegacyAppInstallAdAppStoreEnum.LegacyAppInstallAdAppStore do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:APPLE_APP_STORE, 2)
  field(:GOOGLE_PLAY, 3)
  field(:WINDOWS_STORE, 4)
  field(:WINDOWS_PHONE_STORE, 5)
  field(:CN_APP_STORE, 6)
end
