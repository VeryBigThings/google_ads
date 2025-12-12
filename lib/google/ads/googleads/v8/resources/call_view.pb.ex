defmodule Google.Ads.Googleads.V8.Resources.CallView do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :caller_country_code, 2, optional: true, type: :string
  field :caller_area_code, 3, optional: true, type: :string
  field :call_duration_seconds, 4, optional: true, type: :int64
  field :start_call_date_time, 5, optional: true, type: :string
  field :end_call_date_time, 6, optional: true, type: :string

  field :call_tracking_display_location, 7,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.CallTrackingDisplayLocationEnum.CallTrackingDisplayLocation,
    enum: true

  field :type, 8,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.CallTypeEnum.CallType,
    enum: true

  field :call_status, 9,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.GoogleVoiceCallStatusEnum.GoogleVoiceCallStatus,
    enum: true
end
