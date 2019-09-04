defmodule Google.Ads.Googleads.V2.Enums.ExtensionSettingDeviceEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.ExtensionSettingDeviceEnum.ExtensionSettingDevice do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:MOBILE, 2)
  field(:DESKTOP, 3)
end
