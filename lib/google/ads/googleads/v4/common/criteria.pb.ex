defmodule Google.Ads.Googleads.V4.Common.KeywordInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :text, 1, type: Google.Protobuf.StringValue

  field :match_type, 2,
    type: Google.Ads.Googleads.V4.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.PlacementInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :url, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.MobileAppCategoryInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :mobile_app_category_constant, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.MobileApplicationInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :app_id, 2, type: Google.Protobuf.StringValue
  field :name, 3, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.LocationInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :geo_target_constant, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.DeviceInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :type, 1, type: Google.Ads.Googleads.V4.Enums.DeviceEnum.Device, enum: true
end

defmodule Google.Ads.Googleads.V4.Common.PreferredContentInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :type, 2,
    type: Google.Ads.Googleads.V4.Enums.PreferredContentTypeEnum.PreferredContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.ListingGroupInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :type, 1,
    type: Google.Ads.Googleads.V4.Enums.ListingGroupTypeEnum.ListingGroupType,
    enum: true

  field :case_value, 2, type: Google.Ads.Googleads.V4.Common.ListingDimensionInfo
  field :parent_ad_group_criterion, 3, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.ListingScopeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :dimensions, 2, repeated: true, type: Google.Ads.Googleads.V4.Common.ListingDimensionInfo
end

defmodule Google.Ads.Googleads.V4.Common.ListingDimensionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :dimension, 0

  field :hotel_id, 2, type: Google.Ads.Googleads.V4.Common.HotelIdInfo, oneof: 0
  field :hotel_class, 3, type: Google.Ads.Googleads.V4.Common.HotelClassInfo, oneof: 0

  field :hotel_country_region, 4,
    type: Google.Ads.Googleads.V4.Common.HotelCountryRegionInfo,
    oneof: 0

  field :hotel_state, 5, type: Google.Ads.Googleads.V4.Common.HotelStateInfo, oneof: 0
  field :hotel_city, 6, type: Google.Ads.Googleads.V4.Common.HotelCityInfo, oneof: 0

  field :product_bidding_category, 13,
    type: Google.Ads.Googleads.V4.Common.ProductBiddingCategoryInfo,
    oneof: 0

  field :product_brand, 15, type: Google.Ads.Googleads.V4.Common.ProductBrandInfo, oneof: 0
  field :product_channel, 8, type: Google.Ads.Googleads.V4.Common.ProductChannelInfo, oneof: 0

  field :product_channel_exclusivity, 9,
    type: Google.Ads.Googleads.V4.Common.ProductChannelExclusivityInfo,
    oneof: 0

  field :product_condition, 10,
    type: Google.Ads.Googleads.V4.Common.ProductConditionInfo,
    oneof: 0

  field :product_custom_attribute, 16,
    type: Google.Ads.Googleads.V4.Common.ProductCustomAttributeInfo,
    oneof: 0

  field :product_item_id, 11, type: Google.Ads.Googleads.V4.Common.ProductItemIdInfo, oneof: 0
  field :product_type, 12, type: Google.Ads.Googleads.V4.Common.ProductTypeInfo, oneof: 0

  field :unknown_listing_dimension, 14,
    type: Google.Ads.Googleads.V4.Common.UnknownListingDimensionInfo,
    oneof: 0
end

defmodule Google.Ads.Googleads.V4.Common.HotelIdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :value, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.HotelClassInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :value, 1, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Common.HotelCountryRegionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :country_region_criterion, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.HotelStateInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :state_criterion, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.HotelCityInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :city_criterion, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.ProductBiddingCategoryInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :id, 1, type: Google.Protobuf.Int64Value
  field :country_code, 2, type: Google.Protobuf.StringValue

  field :level, 3,
    type:
      Google.Ads.Googleads.V4.Enums.ProductBiddingCategoryLevelEnum.ProductBiddingCategoryLevel,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.ProductBrandInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :value, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.ProductChannelInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :channel, 1,
    type: Google.Ads.Googleads.V4.Enums.ProductChannelEnum.ProductChannel,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.ProductChannelExclusivityInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :channel_exclusivity, 1,
    type: Google.Ads.Googleads.V4.Enums.ProductChannelExclusivityEnum.ProductChannelExclusivity,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.ProductConditionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :condition, 1,
    type: Google.Ads.Googleads.V4.Enums.ProductConditionEnum.ProductCondition,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.ProductCustomAttributeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :value, 1, type: Google.Protobuf.StringValue

  field :index, 2,
    type:
      Google.Ads.Googleads.V4.Enums.ProductCustomAttributeIndexEnum.ProductCustomAttributeIndex,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.ProductItemIdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :value, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.ProductTypeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :value, 1, type: Google.Protobuf.StringValue

  field :level, 2,
    type: Google.Ads.Googleads.V4.Enums.ProductTypeLevelEnum.ProductTypeLevel,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.UnknownListingDimensionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

end

defmodule Google.Ads.Googleads.V4.Common.HotelDateSelectionTypeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :type, 1,
    type: Google.Ads.Googleads.V4.Enums.HotelDateSelectionTypeEnum.HotelDateSelectionType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.HotelAdvanceBookingWindowInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :min_days, 1, type: Google.Protobuf.Int64Value
  field :max_days, 2, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Common.HotelLengthOfStayInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :min_nights, 1, type: Google.Protobuf.Int64Value
  field :max_nights, 2, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Common.HotelCheckInDayInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :day_of_week, 1, type: Google.Ads.Googleads.V4.Enums.DayOfWeekEnum.DayOfWeek, enum: true
end

defmodule Google.Ads.Googleads.V4.Common.InteractionTypeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :type, 1,
    type: Google.Ads.Googleads.V4.Enums.InteractionTypeEnum.InteractionType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.AdScheduleInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :start_minute, 1,
    type: Google.Ads.Googleads.V4.Enums.MinuteOfHourEnum.MinuteOfHour,
    enum: true

  field :end_minute, 2,
    type: Google.Ads.Googleads.V4.Enums.MinuteOfHourEnum.MinuteOfHour,
    enum: true

  field :start_hour, 3, type: Google.Protobuf.Int32Value
  field :end_hour, 4, type: Google.Protobuf.Int32Value
  field :day_of_week, 5, type: Google.Ads.Googleads.V4.Enums.DayOfWeekEnum.DayOfWeek, enum: true
end

defmodule Google.Ads.Googleads.V4.Common.AgeRangeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :type, 1, type: Google.Ads.Googleads.V4.Enums.AgeRangeTypeEnum.AgeRangeType, enum: true
end

defmodule Google.Ads.Googleads.V4.Common.GenderInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :type, 1, type: Google.Ads.Googleads.V4.Enums.GenderTypeEnum.GenderType, enum: true
end

defmodule Google.Ads.Googleads.V4.Common.IncomeRangeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :type, 1,
    type: Google.Ads.Googleads.V4.Enums.IncomeRangeTypeEnum.IncomeRangeType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.ParentalStatusInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :type, 1,
    type: Google.Ads.Googleads.V4.Enums.ParentalStatusTypeEnum.ParentalStatusType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.YouTubeVideoInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :video_id, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.YouTubeChannelInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :channel_id, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.UserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :user_list, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.ProximityInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :geo_point, 1, type: Google.Ads.Googleads.V4.Common.GeoPointInfo
  field :radius, 2, type: Google.Protobuf.DoubleValue

  field :radius_units, 3,
    type: Google.Ads.Googleads.V4.Enums.ProximityRadiusUnitsEnum.ProximityRadiusUnits,
    enum: true

  field :address, 4, type: Google.Ads.Googleads.V4.Common.AddressInfo
end

defmodule Google.Ads.Googleads.V4.Common.GeoPointInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :longitude_in_micro_degrees, 1, type: Google.Protobuf.Int32Value
  field :latitude_in_micro_degrees, 2, type: Google.Protobuf.Int32Value
end

defmodule Google.Ads.Googleads.V4.Common.AddressInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :postal_code, 1, type: Google.Protobuf.StringValue
  field :province_code, 2, type: Google.Protobuf.StringValue
  field :country_code, 3, type: Google.Protobuf.StringValue
  field :province_name, 4, type: Google.Protobuf.StringValue
  field :street_address, 5, type: Google.Protobuf.StringValue
  field :street_address2, 6, type: Google.Protobuf.StringValue
  field :city_name, 7, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.TopicInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :topic_constant, 1, type: Google.Protobuf.StringValue
  field :path, 2, repeated: true, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.LanguageInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :language_constant, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.IpBlockInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :ip_address, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.ContentLabelInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :type, 1,
    type: Google.Ads.Googleads.V4.Enums.ContentLabelTypeEnum.ContentLabelType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.CarrierInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :carrier_constant, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.UserInterestInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :user_interest_category, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.WebpageInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :criterion_name, 1, type: Google.Protobuf.StringValue
  field :conditions, 2, repeated: true, type: Google.Ads.Googleads.V4.Common.WebpageConditionInfo
end

defmodule Google.Ads.Googleads.V4.Common.WebpageConditionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :operand, 1,
    type: Google.Ads.Googleads.V4.Enums.WebpageConditionOperandEnum.WebpageConditionOperand,
    enum: true

  field :operator, 2,
    type: Google.Ads.Googleads.V4.Enums.WebpageConditionOperatorEnum.WebpageConditionOperator,
    enum: true

  field :argument, 3, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.OperatingSystemVersionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :operating_system_version_constant, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.AppPaymentModelInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :type, 1,
    type: Google.Ads.Googleads.V4.Enums.AppPaymentModelTypeEnum.AppPaymentModelType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.MobileDeviceInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :mobile_device_constant, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.CustomAffinityInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :custom_affinity, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.CustomIntentInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :custom_intent, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.LocationGroupInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :feed, 1, type: Google.Protobuf.StringValue
  field :geo_target_constants, 2, repeated: true, type: Google.Protobuf.StringValue
  field :radius, 3, type: Google.Protobuf.Int64Value

  field :radius_units, 4,
    type: Google.Ads.Googleads.V4.Enums.LocationGroupRadiusUnitsEnum.LocationGroupRadiusUnits,
    enum: true
end
