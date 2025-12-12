defmodule Google.Ads.Googleads.V7.Common.FrequencyCapEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :key, 1, type: Google.Ads.Googleads.V7.Common.FrequencyCapKey
  field :cap, 3, type: :int32
end

defmodule Google.Ads.Googleads.V7.Common.FrequencyCapKey do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :level, 1,
    type: Google.Ads.Googleads.V7.Enums.FrequencyCapLevelEnum.FrequencyCapLevel,
    enum: true

  field :event_type, 3,
    type: Google.Ads.Googleads.V7.Enums.FrequencyCapEventTypeEnum.FrequencyCapEventType,
    enum: true

  field :time_unit, 2,
    type: Google.Ads.Googleads.V7.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit,
    enum: true

  field :time_length, 5, type: :int32
end
