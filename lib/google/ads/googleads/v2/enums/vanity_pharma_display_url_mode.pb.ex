defmodule Google.Ads.Googleads.V2.Enums.VanityPharmaDisplayUrlModeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.VanityPharmaDisplayUrlModeEnum.VanityPharmaDisplayUrlMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:MANUFACTURER_WEBSITE_URL, 2)
  field(:WEBSITE_DESCRIPTION, 3)
end
