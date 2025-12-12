defmodule Google.Ads.Googleads.V8Availabilities.Common.FinalAppUrl do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :os_type, 1,
    type: Google.Ads.Googleads.V8Availabilities.Enums.AppUrlOperatingSystemTypeEnum.AppUrlOperatingSystemType,
    enum: true

  field :url, 3, type: :string
end
