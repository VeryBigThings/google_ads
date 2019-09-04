defmodule Google.Ads.Googleads.V2.Enums.CallPlaceholderFieldEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.CallPlaceholderFieldEnum.CallPlaceholderField do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:PHONE_NUMBER, 2)
  field(:COUNTRY_CODE, 3)
  field(:TRACKED, 4)
  field(:CONVERSION_TYPE_ID, 5)
  field(:CONVERSION_REPORTING_STATE, 6)
end
