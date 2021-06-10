defmodule Google.Ads.Googleads.V8.Common.FinalAppUrl do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          os_type:
            Google.Ads.Googleads.V8.Enums.AppUrlOperatingSystemTypeEnum.AppUrlOperatingSystemType.t(),
          url: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:os_type, :url]

  field :os_type, 1,
    type: Google.Ads.Googleads.V8.Enums.AppUrlOperatingSystemTypeEnum.AppUrlOperatingSystemType,
    enum: true

  field :url, 3, type: Google.Protobuf.StringValue
end
