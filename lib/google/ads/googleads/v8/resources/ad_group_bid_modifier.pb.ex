defmodule Google.Ads.Googleads.V8.Resources.AdGroupBidModifier do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :criterion, 0
  field :resource_name, 1, optional: true, type: :string
  field :ad_group, 13, optional: true, type: :string
  field :criterion_id, 14, optional: true, type: :int64
  field :bid_modifier, 15, optional: true, type: :double
  field :base_ad_group, 16, optional: true, type: :string

  field :bid_modifier_source, 10,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.BidModifierSourceEnum.BidModifierSource,
    enum: true

  field :hotel_date_selection_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.HotelDateSelectionTypeInfo,
    oneof: 0

  field :hotel_advance_booking_window, 6,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.HotelAdvanceBookingWindowInfo,
    oneof: 0

  field :hotel_length_of_stay, 7,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.HotelLengthOfStayInfo,
    oneof: 0

  field :hotel_check_in_day, 8,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.HotelCheckInDayInfo,
    oneof: 0

  field :device, 11, optional: true, type: Google.Ads.Googleads.V8.Common.DeviceInfo, oneof: 0

  field :preferred_content, 12,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.PreferredContentInfo,
    oneof: 0

  field :hotel_check_in_date_range, 17,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.HotelCheckInDateRangeInfo,
    oneof: 0
end
