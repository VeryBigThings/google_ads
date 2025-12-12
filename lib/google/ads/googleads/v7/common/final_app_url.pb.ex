defmodule Google.Ads.Googleads.V7.Common.FinalAppUrl do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :os_type, 1,
    type: Google.Ads.Googleads.V7.Enums.AppUrlOperatingSystemTypeEnum.AppUrlOperatingSystemType,
    enum: true

  field :url, 3, type: :string
end
