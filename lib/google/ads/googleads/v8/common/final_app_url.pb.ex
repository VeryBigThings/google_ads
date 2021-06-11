defmodule Google.Ads.Googleads.V8.Common.FinalAppUrl do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          os_type:
            Google.Ads.Googleads.V8.Enums.AppUrlOperatingSystemTypeEnum.AppUrlOperatingSystemType.t(),
          url: String.t()
        }

  defstruct [:os_type, :url]

  field :os_type, 1,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.AppUrlOperatingSystemTypeEnum.AppUrlOperatingSystemType,
    enum: true

  field :url, 3, optional: true, type: :string
end
