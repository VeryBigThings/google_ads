defmodule Google.Ads.Googleads.V8.Common.KeywordInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          match_type: Google.Ads.Googleads.V8.Enums.KeywordMatchTypeEnum.KeywordMatchType.t()
        }

  defstruct [:text, :match_type]

  field :text, 3, type: :string

  field :match_type, 2,
    type: Google.Ads.Googleads.V8.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Common.PlacementInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t()
        }

  defstruct [:url]

  field :url, 2, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.MobileAppCategoryInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mobile_app_category_constant: String.t()
        }

  defstruct [:mobile_app_category_constant]

  field :mobile_app_category_constant, 2, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.MobileApplicationInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_id: String.t(),
          name: String.t()
        }

  defstruct [:app_id, :name]

  field :app_id, 4, type: :string
  field :name, 5, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.LocationInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          geo_target_constant: String.t()
        }

  defstruct [:geo_target_constant]

  field :geo_target_constant, 2, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.DeviceInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V8.Enums.DeviceEnum.Device.t()
        }

  defstruct [:type]

  field :type, 1, type: Google.Ads.Googleads.V8.Enums.DeviceEnum.Device, enum: true
end

defmodule Google.Ads.Googleads.V8.Common.PreferredContentInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V8.Enums.PreferredContentTypeEnum.PreferredContentType.t()
        }

  defstruct [:type]

  field :type, 2,
    type: Google.Ads.Googleads.V8.Enums.PreferredContentTypeEnum.PreferredContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Common.ListingGroupInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V8.Enums.ListingGroupTypeEnum.ListingGroupType.t(),
          case_value: Google.Ads.Googleads.V8.Common.ListingDimensionInfo.t() | nil,
          parent_ad_group_criterion: String.t()
        }

  defstruct [:type, :case_value, :parent_ad_group_criterion]

  field :type, 1,
    type: Google.Ads.Googleads.V8.Enums.ListingGroupTypeEnum.ListingGroupType,
    enum: true

  field :case_value, 2, type: Google.Ads.Googleads.V8.Common.ListingDimensionInfo
  field :parent_ad_group_criterion, 4, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.ListingScopeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dimensions: [Google.Ads.Googleads.V8.Common.ListingDimensionInfo.t()]
        }

  defstruct [:dimensions]

  field :dimensions, 2, repeated: true, type: Google.Ads.Googleads.V8.Common.ListingDimensionInfo
end

defmodule Google.Ads.Googleads.V8.Common.ListingDimensionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dimension: {atom, any}
        }

  defstruct [:dimension]

  oneof :dimension, 0

  field :hotel_id, 2, type: Google.Ads.Googleads.V8.Common.HotelIdInfo, oneof: 0
  field :hotel_class, 3, type: Google.Ads.Googleads.V8.Common.HotelClassInfo, oneof: 0

  field :hotel_country_region, 4,
    type: Google.Ads.Googleads.V8.Common.HotelCountryRegionInfo,
    oneof: 0

  field :hotel_state, 5, type: Google.Ads.Googleads.V8.Common.HotelStateInfo, oneof: 0
  field :hotel_city, 6, type: Google.Ads.Googleads.V8.Common.HotelCityInfo, oneof: 0

  field :product_bidding_category, 13,
    type: Google.Ads.Googleads.V8.Common.ProductBiddingCategoryInfo,
    oneof: 0

  field :product_brand, 15, type: Google.Ads.Googleads.V8.Common.ProductBrandInfo, oneof: 0
  field :product_channel, 8, type: Google.Ads.Googleads.V8.Common.ProductChannelInfo, oneof: 0

  field :product_channel_exclusivity, 9,
    type: Google.Ads.Googleads.V8.Common.ProductChannelExclusivityInfo,
    oneof: 0

  field :product_condition, 10,
    type: Google.Ads.Googleads.V8.Common.ProductConditionInfo,
    oneof: 0

  field :product_custom_attribute, 16,
    type: Google.Ads.Googleads.V8.Common.ProductCustomAttributeInfo,
    oneof: 0

  field :product_item_id, 11, type: Google.Ads.Googleads.V8.Common.ProductItemIdInfo, oneof: 0
  field :product_type, 12, type: Google.Ads.Googleads.V8.Common.ProductTypeInfo, oneof: 0

  field :unknown_listing_dimension, 14,
    type: Google.Ads.Googleads.V8.Common.UnknownListingDimensionInfo,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8.Common.HotelIdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t()
        }

  defstruct [:value]

  field :value, 2, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.HotelClassInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: integer
        }

  defstruct [:value]

  field :value, 2, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.HotelCountryRegionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          country_region_criterion: String.t()
        }

  defstruct [:country_region_criterion]

  field :country_region_criterion, 2, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.HotelStateInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state_criterion: String.t()
        }

  defstruct [:state_criterion]

  field :state_criterion, 2, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.HotelCityInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          city_criterion: String.t()
        }

  defstruct [:city_criterion]

  field :city_criterion, 2, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.ProductBiddingCategoryInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: integer,
          country_code: String.t(),
          level:
            Google.Ads.Googleads.V8.Enums.ProductBiddingCategoryLevelEnum.ProductBiddingCategoryLevel.t()
        }

  defstruct [:id, :country_code, :level]

  field :id, 4, type: :int64
  field :country_code, 5, type: :string

  field :level, 3,
    type:
      Google.Ads.Googleads.V8.Enums.ProductBiddingCategoryLevelEnum.ProductBiddingCategoryLevel,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Common.ProductBrandInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t()
        }

  defstruct [:value]

  field :value, 2, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.ProductChannelInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel: Google.Ads.Googleads.V8.Enums.ProductChannelEnum.ProductChannel.t()
        }

  defstruct [:channel]

  field :channel, 1,
    type: Google.Ads.Googleads.V8.Enums.ProductChannelEnum.ProductChannel,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Common.ProductChannelExclusivityInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_exclusivity:
            Google.Ads.Googleads.V8.Enums.ProductChannelExclusivityEnum.ProductChannelExclusivity.t()
        }

  defstruct [:channel_exclusivity]

  field :channel_exclusivity, 1,
    type: Google.Ads.Googleads.V8.Enums.ProductChannelExclusivityEnum.ProductChannelExclusivity,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Common.ProductConditionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          condition: Google.Ads.Googleads.V8.Enums.ProductConditionEnum.ProductCondition.t()
        }

  defstruct [:condition]

  field :condition, 1,
    type: Google.Ads.Googleads.V8.Enums.ProductConditionEnum.ProductCondition,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Common.ProductCustomAttributeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t(),
          index:
            Google.Ads.Googleads.V8.Enums.ProductCustomAttributeIndexEnum.ProductCustomAttributeIndex.t()
        }

  defstruct [:value, :index]

  field :value, 3, type: :string

  field :index, 2,
    type:
      Google.Ads.Googleads.V8.Enums.ProductCustomAttributeIndexEnum.ProductCustomAttributeIndex,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Common.ProductItemIdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t()
        }

  defstruct [:value]

  field :value, 2, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.ProductTypeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t(),
          level: Google.Ads.Googleads.V8.Enums.ProductTypeLevelEnum.ProductTypeLevel.t()
        }

  defstruct [:value, :level]

  field :value, 3, type: :string

  field :level, 2,
    type: Google.Ads.Googleads.V8.Enums.ProductTypeLevelEnum.ProductTypeLevel,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Common.UnknownListingDimensionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Ads.Googleads.V8.Common.HotelDateSelectionTypeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            Google.Ads.Googleads.V8.Enums.HotelDateSelectionTypeEnum.HotelDateSelectionType.t()
        }

  defstruct [:type]

  field :type, 1,
    type: Google.Ads.Googleads.V8.Enums.HotelDateSelectionTypeEnum.HotelDateSelectionType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Common.HotelAdvanceBookingWindowInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_days: integer,
          max_days: integer
        }

  defstruct [:min_days, :max_days]

  field :min_days, 3, type: :int64
  field :max_days, 4, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.HotelLengthOfStayInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_nights: integer,
          max_nights: integer
        }

  defstruct [:min_nights, :max_nights]

  field :min_nights, 3, type: :int64
  field :max_nights, 4, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.HotelCheckInDateRangeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_date: String.t(),
          end_date: String.t()
        }

  defstruct [:start_date, :end_date]

  field :start_date, 1, type: :string
  field :end_date, 2, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.HotelCheckInDayInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          day_of_week: Google.Ads.Googleads.V8.Enums.DayOfWeekEnum.DayOfWeek.t()
        }

  defstruct [:day_of_week]

  field :day_of_week, 1, type: Google.Ads.Googleads.V8.Enums.DayOfWeekEnum.DayOfWeek, enum: true
end

defmodule Google.Ads.Googleads.V8.Common.InteractionTypeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V8.Enums.InteractionTypeEnum.InteractionType.t()
        }

  defstruct [:type]

  field :type, 1,
    type: Google.Ads.Googleads.V8.Enums.InteractionTypeEnum.InteractionType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Common.AdScheduleInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_minute: Google.Ads.Googleads.V8.Enums.MinuteOfHourEnum.MinuteOfHour.t(),
          end_minute: Google.Ads.Googleads.V8.Enums.MinuteOfHourEnum.MinuteOfHour.t(),
          start_hour: integer,
          end_hour: integer,
          day_of_week: Google.Ads.Googleads.V8.Enums.DayOfWeekEnum.DayOfWeek.t()
        }

  defstruct [:start_minute, :end_minute, :start_hour, :end_hour, :day_of_week]

  field :start_minute, 1,
    type: Google.Ads.Googleads.V8.Enums.MinuteOfHourEnum.MinuteOfHour,
    enum: true

  field :end_minute, 2,
    type: Google.Ads.Googleads.V8.Enums.MinuteOfHourEnum.MinuteOfHour,
    enum: true

  field :start_hour, 6, type: :int32
  field :end_hour, 7, type: :int32
  field :day_of_week, 5, type: Google.Ads.Googleads.V8.Enums.DayOfWeekEnum.DayOfWeek, enum: true
end

defmodule Google.Ads.Googleads.V8.Common.AgeRangeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V8.Enums.AgeRangeTypeEnum.AgeRangeType.t()
        }

  defstruct [:type]

  field :type, 1, type: Google.Ads.Googleads.V8.Enums.AgeRangeTypeEnum.AgeRangeType, enum: true
end

defmodule Google.Ads.Googleads.V8.Common.GenderInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V8.Enums.GenderTypeEnum.GenderType.t()
        }

  defstruct [:type]

  field :type, 1, type: Google.Ads.Googleads.V8.Enums.GenderTypeEnum.GenderType, enum: true
end

defmodule Google.Ads.Googleads.V8.Common.IncomeRangeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V8.Enums.IncomeRangeTypeEnum.IncomeRangeType.t()
        }

  defstruct [:type]

  field :type, 1,
    type: Google.Ads.Googleads.V8.Enums.IncomeRangeTypeEnum.IncomeRangeType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Common.ParentalStatusInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V8.Enums.ParentalStatusTypeEnum.ParentalStatusType.t()
        }

  defstruct [:type]

  field :type, 1,
    type: Google.Ads.Googleads.V8.Enums.ParentalStatusTypeEnum.ParentalStatusType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Common.YouTubeVideoInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          video_id: String.t()
        }

  defstruct [:video_id]

  field :video_id, 2, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.YouTubeChannelInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: String.t()
        }

  defstruct [:channel_id]

  field :channel_id, 2, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.UserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_list: String.t()
        }

  defstruct [:user_list]

  field :user_list, 2, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.ProximityInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          geo_point: Google.Ads.Googleads.V8.Common.GeoPointInfo.t() | nil,
          radius: float | :infinity | :negative_infinity | :nan,
          radius_units:
            Google.Ads.Googleads.V8.Enums.ProximityRadiusUnitsEnum.ProximityRadiusUnits.t(),
          address: Google.Ads.Googleads.V8.Common.AddressInfo.t() | nil
        }

  defstruct [:geo_point, :radius, :radius_units, :address]

  field :geo_point, 1, type: Google.Ads.Googleads.V8.Common.GeoPointInfo
  field :radius, 5, type: :double

  field :radius_units, 3,
    type: Google.Ads.Googleads.V8.Enums.ProximityRadiusUnitsEnum.ProximityRadiusUnits,
    enum: true

  field :address, 4, type: Google.Ads.Googleads.V8.Common.AddressInfo
end

defmodule Google.Ads.Googleads.V8.Common.GeoPointInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          longitude_in_micro_degrees: integer,
          latitude_in_micro_degrees: integer
        }

  defstruct [:longitude_in_micro_degrees, :latitude_in_micro_degrees]

  field :longitude_in_micro_degrees, 3, type: :int32
  field :latitude_in_micro_degrees, 4, type: :int32
end

defmodule Google.Ads.Googleads.V8.Common.AddressInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          postal_code: String.t(),
          province_code: String.t(),
          country_code: String.t(),
          province_name: String.t(),
          street_address: String.t(),
          street_address2: String.t(),
          city_name: String.t()
        }

  defstruct [
    :postal_code,
    :province_code,
    :country_code,
    :province_name,
    :street_address,
    :street_address2,
    :city_name
  ]

  field :postal_code, 8, type: :string
  field :province_code, 9, type: :string
  field :country_code, 10, type: :string
  field :province_name, 11, type: :string
  field :street_address, 12, type: :string
  field :street_address2, 13, type: :string
  field :city_name, 14, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.TopicInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic_constant: String.t(),
          path: [String.t()]
        }

  defstruct [:topic_constant, :path]

  field :topic_constant, 3, type: :string
  field :path, 4, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.LanguageInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_constant: String.t()
        }

  defstruct [:language_constant]

  field :language_constant, 2, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.IpBlockInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ip_address: String.t()
        }

  defstruct [:ip_address]

  field :ip_address, 2, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.ContentLabelInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V8.Enums.ContentLabelTypeEnum.ContentLabelType.t()
        }

  defstruct [:type]

  field :type, 1,
    type: Google.Ads.Googleads.V8.Enums.ContentLabelTypeEnum.ContentLabelType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Common.CarrierInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          carrier_constant: String.t()
        }

  defstruct [:carrier_constant]

  field :carrier_constant, 2, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.UserInterestInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_interest_category: String.t()
        }

  defstruct [:user_interest_category]

  field :user_interest_category, 2, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.WebpageInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          criterion_name: String.t(),
          conditions: [Google.Ads.Googleads.V8.Common.WebpageConditionInfo.t()],
          coverage_percentage: float | :infinity | :negative_infinity | :nan,
          sample: Google.Ads.Googleads.V8.Common.WebpageSampleInfo.t() | nil
        }

  defstruct [:criterion_name, :conditions, :coverage_percentage, :sample]

  field :criterion_name, 3, type: :string
  field :conditions, 2, repeated: true, type: Google.Ads.Googleads.V8.Common.WebpageConditionInfo
  field :coverage_percentage, 4, type: :double
  field :sample, 5, type: Google.Ads.Googleads.V8.Common.WebpageSampleInfo
end

defmodule Google.Ads.Googleads.V8.Common.WebpageConditionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operand:
            Google.Ads.Googleads.V8.Enums.WebpageConditionOperandEnum.WebpageConditionOperand.t(),
          operator:
            Google.Ads.Googleads.V8.Enums.WebpageConditionOperatorEnum.WebpageConditionOperator.t(),
          argument: String.t()
        }

  defstruct [:operand, :operator, :argument]

  field :operand, 1,
    type: Google.Ads.Googleads.V8.Enums.WebpageConditionOperandEnum.WebpageConditionOperand,
    enum: true

  field :operator, 2,
    type: Google.Ads.Googleads.V8.Enums.WebpageConditionOperatorEnum.WebpageConditionOperator,
    enum: true

  field :argument, 4, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.WebpageSampleInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sample_urls: [String.t()]
        }

  defstruct [:sample_urls]

  field :sample_urls, 1, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.OperatingSystemVersionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operating_system_version_constant: String.t()
        }

  defstruct [:operating_system_version_constant]

  field :operating_system_version_constant, 2, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.AppPaymentModelInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V8.Enums.AppPaymentModelTypeEnum.AppPaymentModelType.t()
        }

  defstruct [:type]

  field :type, 1,
    type: Google.Ads.Googleads.V8.Enums.AppPaymentModelTypeEnum.AppPaymentModelType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Common.MobileDeviceInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mobile_device_constant: String.t()
        }

  defstruct [:mobile_device_constant]

  field :mobile_device_constant, 2, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.CustomAffinityInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          custom_affinity: String.t()
        }

  defstruct [:custom_affinity]

  field :custom_affinity, 2, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.CustomIntentInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          custom_intent: String.t()
        }

  defstruct [:custom_intent]

  field :custom_intent, 2, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.LocationGroupInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feed: String.t(),
          geo_target_constants: [String.t()],
          radius: integer,
          radius_units:
            Google.Ads.Googleads.V8.Enums.LocationGroupRadiusUnitsEnum.LocationGroupRadiusUnits.t(),
          feed_item_sets: [String.t()]
        }

  defstruct [:feed, :geo_target_constants, :radius, :radius_units, :feed_item_sets]

  field :feed, 5, type: :string
  field :geo_target_constants, 6, repeated: true, type: :string
  field :radius, 7, type: :int64

  field :radius_units, 4,
    type: Google.Ads.Googleads.V8.Enums.LocationGroupRadiusUnitsEnum.LocationGroupRadiusUnits,
    enum: true

  field :feed_item_sets, 8, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.CustomAudienceInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          custom_audience: String.t()
        }

  defstruct [:custom_audience]

  field :custom_audience, 1, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.CombinedAudienceInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          combined_audience: String.t()
        }

  defstruct [:combined_audience]

  field :combined_audience, 1, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.KeywordThemeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keyword_theme: {atom, any}
        }

  defstruct [:keyword_theme]

  oneof :keyword_theme, 0

  field :keyword_theme_constant, 1, type: :string, oneof: 0
  field :free_form_keyword_theme, 2, type: :string, oneof: 0
end
