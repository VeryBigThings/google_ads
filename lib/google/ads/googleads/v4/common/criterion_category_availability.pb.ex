defmodule Google.Ads.Googleads.V4.Common.CriterionCategoryAvailability do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :channel, 1, type: Google.Ads.Googleads.V4.Common.CriterionCategoryChannelAvailability

  field :locale, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.CriterionCategoryLocaleAvailability
end

defmodule Google.Ads.Googleads.V4.Common.CriterionCategoryChannelAvailability do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :availability_mode, 1,
    type:
      Google.Ads.Googleads.V4.Enums.CriterionCategoryChannelAvailabilityModeEnum.CriterionCategoryChannelAvailabilityMode,
    enum: true

  field :advertising_channel_type, 2,
    type: Google.Ads.Googleads.V4.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType,
    enum: true

  field :advertising_channel_sub_type, 3,
    repeated: true,
    type: Google.Ads.Googleads.V4.Enums.AdvertisingChannelSubTypeEnum.AdvertisingChannelSubType,
    enum: true

  field :include_default_channel_sub_type, 4, type: Google.Protobuf.BoolValue
end

defmodule Google.Ads.Googleads.V4.Common.CriterionCategoryLocaleAvailability do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :availability_mode, 1,
    type:
      Google.Ads.Googleads.V4.Enums.CriterionCategoryLocaleAvailabilityModeEnum.CriterionCategoryLocaleAvailabilityMode,
    enum: true

  field :country_code, 2, type: Google.Protobuf.StringValue
  field :language_code, 3, type: Google.Protobuf.StringValue
end
