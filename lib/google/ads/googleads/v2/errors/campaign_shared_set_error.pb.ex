defmodule Google.Ads.Googleads.V2.Errors.CampaignSharedSetErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.CampaignSharedSetErrorEnum.CampaignSharedSetError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:SHARED_SET_ACCESS_DENIED, 2)
end
