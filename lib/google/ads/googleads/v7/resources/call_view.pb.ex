defmodule Google.Ads.Googleads.V7.Resources.CallView do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :caller_region_code, 2, type: :string
  field :caller_area_code, 3, type: :string
  field :call_duration_seconds, 4, type: :int64
  field :start_call_date_time, 5, type: :string
  field :end_call_date_time, 6, type: :string

  field :call_tracking_display_location, 7,
    type:
      Google.Ads.Googleads.V7.Enums.CallTrackingDisplayLocationEnum.CallTrackingDisplayLocation,
    enum: true

  field :type, 8, type: Google.Ads.Googleads.V7.Enums.CallTypeEnum.CallType, enum: true

  field :call_status, 9,
    type: Google.Ads.Googleads.V7.Enums.GoogleVoiceCallStatusEnum.GoogleVoiceCallStatus,
    enum: true
end
