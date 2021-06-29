defmodule Google.Ads.Googleads.V8.Resources.AdGroupBidModifier do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          criterion: {atom, any},
          resource_name: String.t(),
          ad_group: String.t(),
          criterion_id: integer,
          bid_modifier: float | :infinity | :negative_infinity | :nan,
          base_ad_group: String.t(),
          bid_modifier_source:
            Google.Ads.Googleads.V8.Enums.BidModifierSourceEnum.BidModifierSource.t()
        }

  defstruct [
    :criterion,
    :resource_name,
    :ad_group,
    :criterion_id,
    :bid_modifier,
    :base_ad_group,
    :bid_modifier_source
  ]

  oneof :criterion, 0

  field :resource_name, 1, type: :string
  field :ad_group, 13, type: :string
  field :criterion_id, 14, type: :int64
  field :bid_modifier, 15, type: :double
  field :base_ad_group, 16, type: :string

  field :bid_modifier_source, 10,
    type: Google.Ads.Googleads.V8.Enums.BidModifierSourceEnum.BidModifierSource,
    enum: true

  field :hotel_date_selection_type, 5,
    type: Google.Ads.Googleads.V8.Common.HotelDateSelectionTypeInfo,
    oneof: 0

  field :hotel_advance_booking_window, 6,
    type: Google.Ads.Googleads.V8.Common.HotelAdvanceBookingWindowInfo,
    oneof: 0

  field :hotel_length_of_stay, 7,
    type: Google.Ads.Googleads.V8.Common.HotelLengthOfStayInfo,
    oneof: 0

  field :hotel_check_in_day, 8, type: Google.Ads.Googleads.V8.Common.HotelCheckInDayInfo, oneof: 0
  field :device, 11, type: Google.Ads.Googleads.V8.Common.DeviceInfo, oneof: 0

  field :preferred_content, 12,
    type: Google.Ads.Googleads.V8.Common.PreferredContentInfo,
    oneof: 0

  field :hotel_check_in_date_range, 17,
    type: Google.Ads.Googleads.V8.Common.HotelCheckInDateRangeInfo,
    oneof: 0
end
