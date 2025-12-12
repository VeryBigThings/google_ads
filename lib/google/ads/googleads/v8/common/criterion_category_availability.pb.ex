defmodule Google.Ads.Googleads.V8.Common.CriterionCategoryAvailability do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :channel, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.CriterionCategoryChannelAvailability

  field :locale, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.CriterionCategoryLocaleAvailability
end

defmodule Google.Ads.Googleads.V8.Common.CriterionCategoryChannelAvailability do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :availability_mode, 1,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.CriterionCategoryChannelAvailabilityModeEnum.CriterionCategoryChannelAvailabilityMode,
    enum: true

  field :advertising_channel_type, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType,
    enum: true

  field :advertising_channel_sub_type, 3,
    repeated: true,
    type: Google.Ads.Googleads.V8.Enums.AdvertisingChannelSubTypeEnum.AdvertisingChannelSubType,
    enum: true

  field :include_default_channel_sub_type, 5, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Common.CriterionCategoryLocaleAvailability do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :availability_mode, 1,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.CriterionCategoryLocaleAvailabilityModeEnum.CriterionCategoryLocaleAvailabilityMode,
    enum: true

  field :country_code, 4, optional: true, type: :string
  field :language_code, 5, optional: true, type: :string
end
