defmodule Google.Ads.Googleads.V8Availabilities.Common.FrequencyCapEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: Google.Ads.Googleads.V8Availabilities.Common.FrequencyCapKey.t() | nil,
          cap: integer
        }

  defstruct [:key, :cap]

  field :key, 1, type: Google.Ads.Googleads.V8Availabilities.Common.FrequencyCapKey
  field :cap, 3, type: :int32
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.FrequencyCapKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          level: Google.Ads.Googleads.V8Availabilities.Enums.FrequencyCapLevelEnum.FrequencyCapLevel.t(),
          event_type:
            Google.Ads.Googleads.V8Availabilities.Enums.FrequencyCapEventTypeEnum.FrequencyCapEventType.t(),
          time_unit:
            Google.Ads.Googleads.V8Availabilities.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit.t(),
          time_length: integer
        }

  defstruct [:level, :event_type, :time_unit, :time_length]

  field :level, 1,
    type: Google.Ads.Googleads.V8Availabilities.Enums.FrequencyCapLevelEnum.FrequencyCapLevel,
    enum: true

  field :event_type, 3,
    type: Google.Ads.Googleads.V8Availabilities.Enums.FrequencyCapEventTypeEnum.FrequencyCapEventType,
    enum: true

  field :time_unit, 2,
    type: Google.Ads.Googleads.V8Availabilities.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit,
    enum: true

  field :time_length, 5, type: :int32
end
