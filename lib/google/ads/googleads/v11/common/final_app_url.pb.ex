defmodule Google.Ads.Googleads.V11.Common.FinalAppUrl do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          os_type:
            Google.Ads.Googleads.V11.Enums.AppUrlOperatingSystemTypeEnum.AppUrlOperatingSystemType.t(),
          url: String.t()
        }

  defstruct os_type: :UNSPECIFIED,
            url: ""

  field :os_type, 1,
    type: Google.Ads.Googleads.V11.Enums.AppUrlOperatingSystemTypeEnum.AppUrlOperatingSystemType,
    json_name: "osType",
    enum: true

  field :url, 3, type: :string
end
