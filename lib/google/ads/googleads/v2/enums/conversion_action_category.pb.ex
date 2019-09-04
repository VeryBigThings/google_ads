defmodule Google.Ads.Googleads.V2.Enums.ConversionActionCategoryEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.ConversionActionCategoryEnum.ConversionActionCategory do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:DEFAULT, 2)
  field(:PAGE_VIEW, 3)
  field(:PURCHASE, 4)
  field(:SIGNUP, 5)
  field(:LEAD, 6)
  field(:DOWNLOAD, 7)
end
