defmodule Google.Ads.Googleads.V2.Enums.CriterionCategoryLocaleAvailabilityModeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.CriterionCategoryLocaleAvailabilityModeEnum.CriterionCategoryLocaleAvailabilityMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:ALL_LOCALES, 2)
  field(:COUNTRY_AND_ALL_LANGUAGES, 3)
  field(:LANGUAGE_AND_ALL_COUNTRIES, 4)
  field(:COUNTRY_AND_LANGUAGE, 5)
end
