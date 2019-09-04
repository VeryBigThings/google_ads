defmodule Google.Ads.Googleads.V2.Errors.AdSharingErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.AdSharingErrorEnum.AdSharingError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:AD_GROUP_ALREADY_CONTAINS_AD, 2)
  field(:INCOMPATIBLE_AD_UNDER_AD_GROUP, 3)
  field(:CANNOT_SHARE_INACTIVE_AD, 4)
end
