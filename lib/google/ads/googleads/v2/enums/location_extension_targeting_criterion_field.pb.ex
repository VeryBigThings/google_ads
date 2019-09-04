defmodule Google.Ads.Googleads.V2.Enums.LocationExtensionTargetingCriterionFieldEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.LocationExtensionTargetingCriterionFieldEnum.LocationExtensionTargetingCriterionField do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:ADDRESS_LINE_1, 2)
  field(:ADDRESS_LINE_2, 3)
  field(:CITY, 4)
  field(:PROVINCE, 5)
  field(:POSTAL_CODE, 6)
  field(:COUNTRY_CODE, 7)
end
