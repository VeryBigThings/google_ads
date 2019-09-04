defmodule Google.Ads.Googleads.V2.Enums.MerchantCenterLinkStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.MerchantCenterLinkStatusEnum.MerchantCenterLinkStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:ENABLED, 2)
  field(:PENDING, 3)
end
