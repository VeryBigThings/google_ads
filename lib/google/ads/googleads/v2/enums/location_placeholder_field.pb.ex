defmodule Google.Ads.Googleads.V2.Enums.LocationPlaceholderFieldEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.LocationPlaceholderFieldEnum.LocationPlaceholderField do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:BUSINESS_NAME, 2)
  field(:ADDRESS_LINE_1, 3)
  field(:ADDRESS_LINE_2, 4)
  field(:CITY, 5)
  field(:PROVINCE, 6)
  field(:POSTAL_CODE, 7)
  field(:COUNTRY_CODE, 8)
  field(:PHONE_NUMBER, 9)
end
