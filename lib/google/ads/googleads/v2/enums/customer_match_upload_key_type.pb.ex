defmodule Google.Ads.Googleads.V2.Enums.CustomerMatchUploadKeyTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.CustomerMatchUploadKeyTypeEnum.CustomerMatchUploadKeyType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:CONTACT_INFO, 2)
  field(:CRM_ID, 3)
  field(:MOBILE_ADVERTISING_ID, 4)
end
