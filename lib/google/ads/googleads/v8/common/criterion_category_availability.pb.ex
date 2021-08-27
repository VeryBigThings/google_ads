defmodule Google.Ads.Googleads.V8.Common.CriterionCategoryAvailability do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel: Google.Ads.Googleads.V8.Common.CriterionCategoryChannelAvailability.t() | nil,
          locale: [Google.Ads.Googleads.V8.Common.CriterionCategoryLocaleAvailability.t()]
        }
  defstruct [:channel, :locale]

  field :channel, 1, type: Google.Ads.Googleads.V8.Common.CriterionCategoryChannelAvailability

  field :locale, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.CriterionCategoryLocaleAvailability
end

defmodule Google.Ads.Googleads.V8.Common.CriterionCategoryChannelAvailability do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          availability_mode:
            Google.Ads.Googleads.V8.Enums.CriterionCategoryChannelAvailabilityModeEnum.CriterionCategoryChannelAvailabilityMode.t(),
          advertising_channel_type:
            Google.Ads.Googleads.V8.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType.t(),
          advertising_channel_sub_type: [
            [
              Google.Ads.Googleads.V8.Enums.AdvertisingChannelSubTypeEnum.AdvertisingChannelSubType.t()
            ]
          ],
          include_default_channel_sub_type: boolean
        }
  defstruct [
    :availability_mode,
    :advertising_channel_type,
    :advertising_channel_sub_type,
    :include_default_channel_sub_type
  ]

  field :availability_mode, 1,
    type:
      Google.Ads.Googleads.V8.Enums.CriterionCategoryChannelAvailabilityModeEnum.CriterionCategoryChannelAvailabilityMode,
    enum: true

  field :advertising_channel_type, 2,
    type: Google.Ads.Googleads.V8.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType,
    enum: true

  field :advertising_channel_sub_type, 3,
    repeated: true,
    type: Google.Ads.Googleads.V8.Enums.AdvertisingChannelSubTypeEnum.AdvertisingChannelSubType,
    enum: true

  field :include_default_channel_sub_type, 5, type: :bool
end

defmodule Google.Ads.Googleads.V8.Common.CriterionCategoryLocaleAvailability do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          availability_mode:
            Google.Ads.Googleads.V8.Enums.CriterionCategoryLocaleAvailabilityModeEnum.CriterionCategoryLocaleAvailabilityMode.t(),
          country_code: String.t(),
          language_code: String.t()
        }
  defstruct [:availability_mode, :country_code, :language_code]

  field :availability_mode, 1,
    type:
      Google.Ads.Googleads.V8.Enums.CriterionCategoryLocaleAvailabilityModeEnum.CriterionCategoryLocaleAvailabilityMode,
    enum: true

  field :country_code, 4, type: :string
  field :language_code, 5, type: :string
end
