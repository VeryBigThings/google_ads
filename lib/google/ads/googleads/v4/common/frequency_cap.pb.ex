defmodule Google.Ads.Googleads.V4.Common.FrequencyCapEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :key, 1, type: Google.Ads.Googleads.V4.Common.FrequencyCapKey
  field :cap, 2, type: Google.Protobuf.Int32Value
end

defmodule Google.Ads.Googleads.V4.Common.FrequencyCapKey do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :level, 1,
    type: Google.Ads.Googleads.V4.Enums.FrequencyCapLevelEnum.FrequencyCapLevel,
    enum: true

  field :event_type, 3,
    type: Google.Ads.Googleads.V4.Enums.FrequencyCapEventTypeEnum.FrequencyCapEventType,
    enum: true

  field :time_unit, 2,
    type: Google.Ads.Googleads.V4.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit,
    enum: true

  field :time_length, 4, type: Google.Protobuf.Int32Value
end
