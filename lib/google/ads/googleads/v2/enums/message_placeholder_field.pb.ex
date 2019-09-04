defmodule Google.Ads.Googleads.V2.Enums.MessagePlaceholderFieldEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.MessagePlaceholderFieldEnum.MessagePlaceholderField do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:BUSINESS_NAME, 2)
  field(:COUNTRY_CODE, 3)
  field(:PHONE_NUMBER, 4)
  field(:MESSAGE_EXTENSION_TEXT, 5)
  field(:MESSAGE_TEXT, 6)
end
