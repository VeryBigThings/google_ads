defmodule Google.Ads.Googleads.V2.Enums.DisplayAdFormatSettingEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.DisplayAdFormatSettingEnum.DisplayAdFormatSetting do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:ALL_FORMATS, 2)
  field(:NON_NATIVE, 3)
  field(:NATIVE, 4)
end
