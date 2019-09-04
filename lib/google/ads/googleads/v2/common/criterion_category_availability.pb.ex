defmodule Google.Ads.Googleads.V2.Common.CriterionCategoryAvailability do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel: Google.Ads.Googleads.V2.Common.CriterionCategoryChannelAvailability.t() | nil,
          locale: [Google.Ads.Googleads.V2.Common.CriterionCategoryLocaleAvailability.t()]
        }
  defstruct [:channel, :locale]

  field(:channel, 1, type: Google.Ads.Googleads.V2.Common.CriterionCategoryChannelAvailability)

  field(:locale, 2,
    repeated: true,
    type: Google.Ads.Googleads.V2.Common.CriterionCategoryLocaleAvailability
  )
end

defmodule Google.Ads.Googleads.V2.Common.CriterionCategoryChannelAvailability do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          availability_mode: atom | integer,
          advertising_channel_type: atom | integer,
          advertising_channel_sub_type: [atom | integer],
          include_default_channel_sub_type: Google.Protobuf.BoolValue.t() | nil
        }
  defstruct [
    :availability_mode,
    :advertising_channel_type,
    :advertising_channel_sub_type,
    :include_default_channel_sub_type
  ]

  field(:availability_mode, 1,
    type:
      Google.Ads.Googleads.V2.Enums.CriterionCategoryChannelAvailabilityModeEnum.CriterionCategoryChannelAvailabilityMode,
    enum: true
  )

  field(:advertising_channel_type, 2,
    type: Google.Ads.Googleads.V2.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType,
    enum: true
  )

  field(:advertising_channel_sub_type, 3,
    repeated: true,
    type: Google.Ads.Googleads.V2.Enums.AdvertisingChannelSubTypeEnum.AdvertisingChannelSubType,
    enum: true
  )

  field(:include_default_channel_sub_type, 4, type: Google.Protobuf.BoolValue)
end

defmodule Google.Ads.Googleads.V2.Common.CriterionCategoryLocaleAvailability do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          availability_mode: atom | integer,
          country_code: Google.Protobuf.StringValue.t() | nil,
          language_code: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [:availability_mode, :country_code, :language_code]

  field(:availability_mode, 1,
    type:
      Google.Ads.Googleads.V2.Enums.CriterionCategoryLocaleAvailabilityModeEnum.CriterionCategoryLocaleAvailabilityMode,
    enum: true
  )

  field(:country_code, 2, type: Google.Protobuf.StringValue)
  field(:language_code, 3, type: Google.Protobuf.StringValue)
end
