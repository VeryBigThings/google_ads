defmodule Google.Ads.Googleads.V8.Common.FrequencyCapEntry do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :key, 1, optional: true, type: Google.Ads.Googleads.V8.Common.FrequencyCapKey
  field :cap, 3, optional: true, type: :int32
end

defmodule Google.Ads.Googleads.V8.Common.FrequencyCapKey do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :level, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.FrequencyCapLevelEnum.FrequencyCapLevel,
    enum: true

  field :event_type, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.FrequencyCapEventTypeEnum.FrequencyCapEventType,
    enum: true

  field :time_unit, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit,
    enum: true

  field :time_length, 5, optional: true, type: :int32
end
