defmodule Google.Ads.Googleads.V11.Common.CriterionCategoryAvailability do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel: Google.Ads.Googleads.V11.Common.CriterionCategoryChannelAvailability.t() | nil,
          locale: [Google.Ads.Googleads.V11.Common.CriterionCategoryLocaleAvailability.t()]
        }

  defstruct channel: nil,
            locale: []

  field :channel, 1, type: Google.Ads.Googleads.V11.Common.CriterionCategoryChannelAvailability

  field :locale, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.CriterionCategoryLocaleAvailability
end
defmodule Google.Ads.Googleads.V11.Common.CriterionCategoryChannelAvailability do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          availability_mode:
            Google.Ads.Googleads.V11.Enums.CriterionCategoryChannelAvailabilityModeEnum.CriterionCategoryChannelAvailabilityMode.t(),
          advertising_channel_type:
            Google.Ads.Googleads.V11.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType.t(),
          advertising_channel_sub_type: [
            Google.Ads.Googleads.V11.Enums.AdvertisingChannelSubTypeEnum.AdvertisingChannelSubType.t()
          ],
          include_default_channel_sub_type: boolean
        }

  defstruct availability_mode: :UNSPECIFIED,
            advertising_channel_type: :UNSPECIFIED,
            advertising_channel_sub_type: [],
            include_default_channel_sub_type: false

  field :availability_mode, 1,
    type:
      Google.Ads.Googleads.V11.Enums.CriterionCategoryChannelAvailabilityModeEnum.CriterionCategoryChannelAvailabilityMode,
    json_name: "availabilityMode",
    enum: true

  field :advertising_channel_type, 2,
    type: Google.Ads.Googleads.V11.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType,
    json_name: "advertisingChannelType",
    enum: true

  field :advertising_channel_sub_type, 3,
    repeated: true,
    type: Google.Ads.Googleads.V11.Enums.AdvertisingChannelSubTypeEnum.AdvertisingChannelSubType,
    json_name: "advertisingChannelSubType",
    enum: true

  field :include_default_channel_sub_type, 5,
    type: :bool,
    json_name: "includeDefaultChannelSubType"
end
defmodule Google.Ads.Googleads.V11.Common.CriterionCategoryLocaleAvailability do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          availability_mode:
            Google.Ads.Googleads.V11.Enums.CriterionCategoryLocaleAvailabilityModeEnum.CriterionCategoryLocaleAvailabilityMode.t(),
          country_code: String.t(),
          language_code: String.t()
        }

  defstruct availability_mode: :UNSPECIFIED,
            country_code: "",
            language_code: ""

  field :availability_mode, 1,
    type:
      Google.Ads.Googleads.V11.Enums.CriterionCategoryLocaleAvailabilityModeEnum.CriterionCategoryLocaleAvailabilityMode,
    json_name: "availabilityMode",
    enum: true

  field :country_code, 4, type: :string, json_name: "countryCode"
  field :language_code, 5, type: :string, json_name: "languageCode"
end
