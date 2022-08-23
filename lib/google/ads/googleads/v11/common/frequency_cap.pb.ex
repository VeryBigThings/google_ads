defmodule Google.Ads.Googleads.V11.Common.FrequencyCapEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: Google.Ads.Googleads.V11.Common.FrequencyCapKey.t() | nil,
          cap: integer
        }

  defstruct key: nil,
            cap: 0

  field :key, 1, type: Google.Ads.Googleads.V11.Common.FrequencyCapKey
  field :cap, 3, type: :int32
end
defmodule Google.Ads.Googleads.V11.Common.FrequencyCapKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          level: Google.Ads.Googleads.V11.Enums.FrequencyCapLevelEnum.FrequencyCapLevel.t(),
          event_type:
            Google.Ads.Googleads.V11.Enums.FrequencyCapEventTypeEnum.FrequencyCapEventType.t(),
          time_unit:
            Google.Ads.Googleads.V11.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit.t(),
          time_length: integer
        }

  defstruct level: :UNSPECIFIED,
            event_type: :UNSPECIFIED,
            time_unit: :UNSPECIFIED,
            time_length: 0

  field :level, 1,
    type: Google.Ads.Googleads.V11.Enums.FrequencyCapLevelEnum.FrequencyCapLevel,
    enum: true

  field :event_type, 3,
    type: Google.Ads.Googleads.V11.Enums.FrequencyCapEventTypeEnum.FrequencyCapEventType,
    json_name: "eventType",
    enum: true

  field :time_unit, 2,
    type: Google.Ads.Googleads.V11.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit,
    json_name: "timeUnit",
    enum: true

  field :time_length, 5, type: :int32, json_name: "timeLength"
end
