defmodule Google.Ads.Googleads.V2.Errors.AssetErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.AssetErrorEnum.AssetError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:CUSTOMER_NOT_WHITELISTED_FOR_ASSET_TYPE, 2)
  field(:DUPLICATE_ASSET, 3)
  field(:DUPLICATE_ASSET_NAME, 4)
  field(:ASSET_DATA_IS_MISSING, 5)
  field(:CANNOT_MODIFY_ASSET_NAME, 6)
end
