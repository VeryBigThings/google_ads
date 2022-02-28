defmodule Google.Ads.Googleads.V10.Resources.AdGroupBidModifier do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          criterion:
            {:hotel_date_selection_type,
             Google.Ads.Googleads.V10.Common.HotelDateSelectionTypeInfo.t() | nil}
            | {:hotel_advance_booking_window,
               Google.Ads.Googleads.V10.Common.HotelAdvanceBookingWindowInfo.t() | nil}
            | {:hotel_length_of_stay,
               Google.Ads.Googleads.V10.Common.HotelLengthOfStayInfo.t() | nil}
            | {:hotel_check_in_day, Google.Ads.Googleads.V10.Common.HotelCheckInDayInfo.t() | nil}
            | {:device, Google.Ads.Googleads.V10.Common.DeviceInfo.t() | nil}
            | {:preferred_content, Google.Ads.Googleads.V10.Common.PreferredContentInfo.t() | nil}
            | {:hotel_check_in_date_range,
               Google.Ads.Googleads.V10.Common.HotelCheckInDateRangeInfo.t() | nil},
          resource_name: String.t(),
          ad_group: String.t(),
          criterion_id: integer,
          bid_modifier: float | :infinity | :negative_infinity | :nan,
          base_ad_group: String.t(),
          bid_modifier_source:
            Google.Ads.Googleads.V10.Enums.BidModifierSourceEnum.BidModifierSource.t()
        }

  defstruct criterion: nil,
            resource_name: "",
            ad_group: "",
            criterion_id: 0,
            bid_modifier: 0.0,
            base_ad_group: "",
            bid_modifier_source: :UNSPECIFIED

  oneof :criterion, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :ad_group, 13, type: :string, json_name: "adGroup", deprecated: false
  field :criterion_id, 14, type: :int64, json_name: "criterionId", deprecated: false
  field :bid_modifier, 15, type: :double, json_name: "bidModifier"
  field :base_ad_group, 16, type: :string, json_name: "baseAdGroup", deprecated: false

  field :bid_modifier_source, 10,
    type: Google.Ads.Googleads.V10.Enums.BidModifierSourceEnum.BidModifierSource,
    json_name: "bidModifierSource",
    enum: true,
    deprecated: false

  field :hotel_date_selection_type, 5,
    type: Google.Ads.Googleads.V10.Common.HotelDateSelectionTypeInfo,
    json_name: "hotelDateSelectionType",
    oneof: 0,
    deprecated: false

  field :hotel_advance_booking_window, 6,
    type: Google.Ads.Googleads.V10.Common.HotelAdvanceBookingWindowInfo,
    json_name: "hotelAdvanceBookingWindow",
    oneof: 0,
    deprecated: false

  field :hotel_length_of_stay, 7,
    type: Google.Ads.Googleads.V10.Common.HotelLengthOfStayInfo,
    json_name: "hotelLengthOfStay",
    oneof: 0,
    deprecated: false

  field :hotel_check_in_day, 8,
    type: Google.Ads.Googleads.V10.Common.HotelCheckInDayInfo,
    json_name: "hotelCheckInDay",
    oneof: 0,
    deprecated: false

  field :device, 11, type: Google.Ads.Googleads.V10.Common.DeviceInfo, oneof: 0, deprecated: false

  field :preferred_content, 12,
    type: Google.Ads.Googleads.V10.Common.PreferredContentInfo,
    json_name: "preferredContent",
    oneof: 0,
    deprecated: false

  field :hotel_check_in_date_range, 17,
    type: Google.Ads.Googleads.V10.Common.HotelCheckInDateRangeInfo,
    json_name: "hotelCheckInDateRange",
    oneof: 0,
    deprecated: false
end
