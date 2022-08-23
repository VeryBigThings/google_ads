defmodule Google.Ads.Googleads.V11.Common.KeywordInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          match_type: Google.Ads.Googleads.V11.Enums.KeywordMatchTypeEnum.KeywordMatchType.t()
        }

  defstruct text: "",
            match_type: :UNSPECIFIED

  field :text, 3, type: :string

  field :match_type, 2,
    type: Google.Ads.Googleads.V11.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    json_name: "matchType",
    enum: true
end
defmodule Google.Ads.Googleads.V11.Common.PlacementInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t()
        }

  defstruct url: ""

  field :url, 2, type: :string
end
defmodule Google.Ads.Googleads.V11.Common.MobileAppCategoryInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mobile_app_category_constant: String.t()
        }

  defstruct mobile_app_category_constant: ""

  field :mobile_app_category_constant, 2, type: :string, json_name: "mobileAppCategoryConstant"
end
defmodule Google.Ads.Googleads.V11.Common.MobileApplicationInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_id: String.t(),
          name: String.t()
        }

  defstruct app_id: "",
            name: ""

  field :app_id, 4, type: :string, json_name: "appId"
  field :name, 5, type: :string
end
defmodule Google.Ads.Googleads.V11.Common.LocationInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          geo_target_constant: String.t()
        }

  defstruct geo_target_constant: ""

  field :geo_target_constant, 2, type: :string, json_name: "geoTargetConstant"
end
defmodule Google.Ads.Googleads.V11.Common.DeviceInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V11.Enums.DeviceEnum.Device.t()
        }

  defstruct type: :UNSPECIFIED

  field :type, 1, type: Google.Ads.Googleads.V11.Enums.DeviceEnum.Device, enum: true
end
defmodule Google.Ads.Googleads.V11.Common.PreferredContentInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V11.Enums.PreferredContentTypeEnum.PreferredContentType.t()
        }

  defstruct type: :UNSPECIFIED

  field :type, 2,
    type: Google.Ads.Googleads.V11.Enums.PreferredContentTypeEnum.PreferredContentType,
    enum: true
end
defmodule Google.Ads.Googleads.V11.Common.ListingGroupInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V11.Enums.ListingGroupTypeEnum.ListingGroupType.t(),
          case_value: Google.Ads.Googleads.V11.Common.ListingDimensionInfo.t() | nil,
          parent_ad_group_criterion: String.t()
        }

  defstruct type: :UNSPECIFIED,
            case_value: nil,
            parent_ad_group_criterion: ""

  field :type, 1,
    type: Google.Ads.Googleads.V11.Enums.ListingGroupTypeEnum.ListingGroupType,
    enum: true

  field :case_value, 2,
    type: Google.Ads.Googleads.V11.Common.ListingDimensionInfo,
    json_name: "caseValue"

  field :parent_ad_group_criterion, 4, type: :string, json_name: "parentAdGroupCriterion"
end
defmodule Google.Ads.Googleads.V11.Common.ListingScopeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dimensions: [Google.Ads.Googleads.V11.Common.ListingDimensionInfo.t()]
        }

  defstruct dimensions: []

  field :dimensions, 2, repeated: true, type: Google.Ads.Googleads.V11.Common.ListingDimensionInfo
end
defmodule Google.Ads.Googleads.V11.Common.ListingDimensionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dimension:
            {:hotel_id, Google.Ads.Googleads.V11.Common.HotelIdInfo.t() | nil}
            | {:hotel_class, Google.Ads.Googleads.V11.Common.HotelClassInfo.t() | nil}
            | {:hotel_country_region,
               Google.Ads.Googleads.V11.Common.HotelCountryRegionInfo.t() | nil}
            | {:hotel_state, Google.Ads.Googleads.V11.Common.HotelStateInfo.t() | nil}
            | {:hotel_city, Google.Ads.Googleads.V11.Common.HotelCityInfo.t() | nil}
            | {:product_bidding_category,
               Google.Ads.Googleads.V11.Common.ProductBiddingCategoryInfo.t() | nil}
            | {:product_brand, Google.Ads.Googleads.V11.Common.ProductBrandInfo.t() | nil}
            | {:product_channel, Google.Ads.Googleads.V11.Common.ProductChannelInfo.t() | nil}
            | {:product_channel_exclusivity,
               Google.Ads.Googleads.V11.Common.ProductChannelExclusivityInfo.t() | nil}
            | {:product_condition, Google.Ads.Googleads.V11.Common.ProductConditionInfo.t() | nil}
            | {:product_custom_attribute,
               Google.Ads.Googleads.V11.Common.ProductCustomAttributeInfo.t() | nil}
            | {:product_item_id, Google.Ads.Googleads.V11.Common.ProductItemIdInfo.t() | nil}
            | {:product_type, Google.Ads.Googleads.V11.Common.ProductTypeInfo.t() | nil}
            | {:product_grouping, Google.Ads.Googleads.V11.Common.ProductGroupingInfo.t() | nil}
            | {:product_labels, Google.Ads.Googleads.V11.Common.ProductLabelsInfo.t() | nil}
            | {:product_legacy_condition,
               Google.Ads.Googleads.V11.Common.ProductLegacyConditionInfo.t() | nil}
            | {:product_type_full, Google.Ads.Googleads.V11.Common.ProductTypeFullInfo.t() | nil}
            | {:unknown_listing_dimension,
               Google.Ads.Googleads.V11.Common.UnknownListingDimensionInfo.t() | nil}
        }

  defstruct dimension: nil

  oneof :dimension, 0

  field :hotel_id, 2,
    type: Google.Ads.Googleads.V11.Common.HotelIdInfo,
    json_name: "hotelId",
    oneof: 0

  field :hotel_class, 3,
    type: Google.Ads.Googleads.V11.Common.HotelClassInfo,
    json_name: "hotelClass",
    oneof: 0

  field :hotel_country_region, 4,
    type: Google.Ads.Googleads.V11.Common.HotelCountryRegionInfo,
    json_name: "hotelCountryRegion",
    oneof: 0

  field :hotel_state, 5,
    type: Google.Ads.Googleads.V11.Common.HotelStateInfo,
    json_name: "hotelState",
    oneof: 0

  field :hotel_city, 6,
    type: Google.Ads.Googleads.V11.Common.HotelCityInfo,
    json_name: "hotelCity",
    oneof: 0

  field :product_bidding_category, 13,
    type: Google.Ads.Googleads.V11.Common.ProductBiddingCategoryInfo,
    json_name: "productBiddingCategory",
    oneof: 0

  field :product_brand, 15,
    type: Google.Ads.Googleads.V11.Common.ProductBrandInfo,
    json_name: "productBrand",
    oneof: 0

  field :product_channel, 8,
    type: Google.Ads.Googleads.V11.Common.ProductChannelInfo,
    json_name: "productChannel",
    oneof: 0

  field :product_channel_exclusivity, 9,
    type: Google.Ads.Googleads.V11.Common.ProductChannelExclusivityInfo,
    json_name: "productChannelExclusivity",
    oneof: 0

  field :product_condition, 10,
    type: Google.Ads.Googleads.V11.Common.ProductConditionInfo,
    json_name: "productCondition",
    oneof: 0

  field :product_custom_attribute, 16,
    type: Google.Ads.Googleads.V11.Common.ProductCustomAttributeInfo,
    json_name: "productCustomAttribute",
    oneof: 0

  field :product_item_id, 11,
    type: Google.Ads.Googleads.V11.Common.ProductItemIdInfo,
    json_name: "productItemId",
    oneof: 0

  field :product_type, 12,
    type: Google.Ads.Googleads.V11.Common.ProductTypeInfo,
    json_name: "productType",
    oneof: 0

  field :product_grouping, 17,
    type: Google.Ads.Googleads.V11.Common.ProductGroupingInfo,
    json_name: "productGrouping",
    oneof: 0

  field :product_labels, 18,
    type: Google.Ads.Googleads.V11.Common.ProductLabelsInfo,
    json_name: "productLabels",
    oneof: 0

  field :product_legacy_condition, 19,
    type: Google.Ads.Googleads.V11.Common.ProductLegacyConditionInfo,
    json_name: "productLegacyCondition",
    oneof: 0

  field :product_type_full, 20,
    type: Google.Ads.Googleads.V11.Common.ProductTypeFullInfo,
    json_name: "productTypeFull",
    oneof: 0

  field :unknown_listing_dimension, 14,
    type: Google.Ads.Googleads.V11.Common.UnknownListingDimensionInfo,
    json_name: "unknownListingDimension",
    oneof: 0
end
defmodule Google.Ads.Googleads.V11.Common.HotelIdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t()
        }

  defstruct value: ""

  field :value, 2, type: :string
end
defmodule Google.Ads.Googleads.V11.Common.HotelClassInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: integer
        }

  defstruct value: 0

  field :value, 2, type: :int64
end
defmodule Google.Ads.Googleads.V11.Common.HotelCountryRegionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          country_region_criterion: String.t()
        }

  defstruct country_region_criterion: ""

  field :country_region_criterion, 2, type: :string, json_name: "countryRegionCriterion"
end
defmodule Google.Ads.Googleads.V11.Common.HotelStateInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state_criterion: String.t()
        }

  defstruct state_criterion: ""

  field :state_criterion, 2, type: :string, json_name: "stateCriterion"
end
defmodule Google.Ads.Googleads.V11.Common.HotelCityInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          city_criterion: String.t()
        }

  defstruct city_criterion: ""

  field :city_criterion, 2, type: :string, json_name: "cityCriterion"
end
defmodule Google.Ads.Googleads.V11.Common.ProductBiddingCategoryInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: integer,
          country_code: String.t(),
          level:
            Google.Ads.Googleads.V11.Enums.ProductBiddingCategoryLevelEnum.ProductBiddingCategoryLevel.t()
        }

  defstruct id: 0,
            country_code: "",
            level: :UNSPECIFIED

  field :id, 4, type: :int64
  field :country_code, 5, type: :string, json_name: "countryCode"

  field :level, 3,
    type:
      Google.Ads.Googleads.V11.Enums.ProductBiddingCategoryLevelEnum.ProductBiddingCategoryLevel,
    enum: true
end
defmodule Google.Ads.Googleads.V11.Common.ProductBrandInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t()
        }

  defstruct value: ""

  field :value, 2, type: :string
end
defmodule Google.Ads.Googleads.V11.Common.ProductChannelInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel: Google.Ads.Googleads.V11.Enums.ProductChannelEnum.ProductChannel.t()
        }

  defstruct channel: :UNSPECIFIED

  field :channel, 1,
    type: Google.Ads.Googleads.V11.Enums.ProductChannelEnum.ProductChannel,
    enum: true
end
defmodule Google.Ads.Googleads.V11.Common.ProductChannelExclusivityInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_exclusivity:
            Google.Ads.Googleads.V11.Enums.ProductChannelExclusivityEnum.ProductChannelExclusivity.t()
        }

  defstruct channel_exclusivity: :UNSPECIFIED

  field :channel_exclusivity, 1,
    type: Google.Ads.Googleads.V11.Enums.ProductChannelExclusivityEnum.ProductChannelExclusivity,
    json_name: "channelExclusivity",
    enum: true
end
defmodule Google.Ads.Googleads.V11.Common.ProductConditionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          condition: Google.Ads.Googleads.V11.Enums.ProductConditionEnum.ProductCondition.t()
        }

  defstruct condition: :UNSPECIFIED

  field :condition, 1,
    type: Google.Ads.Googleads.V11.Enums.ProductConditionEnum.ProductCondition,
    enum: true
end
defmodule Google.Ads.Googleads.V11.Common.ProductCustomAttributeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t(),
          index:
            Google.Ads.Googleads.V11.Enums.ProductCustomAttributeIndexEnum.ProductCustomAttributeIndex.t()
        }

  defstruct value: "",
            index: :UNSPECIFIED

  field :value, 3, type: :string

  field :index, 2,
    type:
      Google.Ads.Googleads.V11.Enums.ProductCustomAttributeIndexEnum.ProductCustomAttributeIndex,
    enum: true
end
defmodule Google.Ads.Googleads.V11.Common.ProductItemIdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t()
        }

  defstruct value: ""

  field :value, 2, type: :string
end
defmodule Google.Ads.Googleads.V11.Common.ProductTypeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t(),
          level: Google.Ads.Googleads.V11.Enums.ProductTypeLevelEnum.ProductTypeLevel.t()
        }

  defstruct value: "",
            level: :UNSPECIFIED

  field :value, 3, type: :string

  field :level, 2,
    type: Google.Ads.Googleads.V11.Enums.ProductTypeLevelEnum.ProductTypeLevel,
    enum: true
end
defmodule Google.Ads.Googleads.V11.Common.ProductGroupingInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t()
        }

  defstruct value: ""

  field :value, 1, type: :string
end
defmodule Google.Ads.Googleads.V11.Common.ProductLabelsInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t()
        }

  defstruct value: ""

  field :value, 1, type: :string
end
defmodule Google.Ads.Googleads.V11.Common.ProductLegacyConditionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t()
        }

  defstruct value: ""

  field :value, 1, type: :string
end
defmodule Google.Ads.Googleads.V11.Common.ProductTypeFullInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t()
        }

  defstruct value: ""

  field :value, 1, type: :string
end
defmodule Google.Ads.Googleads.V11.Common.UnknownListingDimensionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Ads.Googleads.V11.Common.HotelDateSelectionTypeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            Google.Ads.Googleads.V11.Enums.HotelDateSelectionTypeEnum.HotelDateSelectionType.t()
        }

  defstruct type: :UNSPECIFIED

  field :type, 1,
    type: Google.Ads.Googleads.V11.Enums.HotelDateSelectionTypeEnum.HotelDateSelectionType,
    enum: true
end
defmodule Google.Ads.Googleads.V11.Common.HotelAdvanceBookingWindowInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_days: integer,
          max_days: integer
        }

  defstruct min_days: 0,
            max_days: 0

  field :min_days, 3, type: :int64, json_name: "minDays"
  field :max_days, 4, type: :int64, json_name: "maxDays"
end
defmodule Google.Ads.Googleads.V11.Common.HotelLengthOfStayInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_nights: integer,
          max_nights: integer
        }

  defstruct min_nights: 0,
            max_nights: 0

  field :min_nights, 3, type: :int64, json_name: "minNights"
  field :max_nights, 4, type: :int64, json_name: "maxNights"
end
defmodule Google.Ads.Googleads.V11.Common.HotelCheckInDateRangeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_date: String.t(),
          end_date: String.t()
        }

  defstruct start_date: "",
            end_date: ""

  field :start_date, 1, type: :string, json_name: "startDate"
  field :end_date, 2, type: :string, json_name: "endDate"
end
defmodule Google.Ads.Googleads.V11.Common.HotelCheckInDayInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          day_of_week: Google.Ads.Googleads.V11.Enums.DayOfWeekEnum.DayOfWeek.t()
        }

  defstruct day_of_week: :UNSPECIFIED

  field :day_of_week, 1,
    type: Google.Ads.Googleads.V11.Enums.DayOfWeekEnum.DayOfWeek,
    json_name: "dayOfWeek",
    enum: true
end
defmodule Google.Ads.Googleads.V11.Common.InteractionTypeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V11.Enums.InteractionTypeEnum.InteractionType.t()
        }

  defstruct type: :UNSPECIFIED

  field :type, 1,
    type: Google.Ads.Googleads.V11.Enums.InteractionTypeEnum.InteractionType,
    enum: true
end
defmodule Google.Ads.Googleads.V11.Common.AdScheduleInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_minute: Google.Ads.Googleads.V11.Enums.MinuteOfHourEnum.MinuteOfHour.t(),
          end_minute: Google.Ads.Googleads.V11.Enums.MinuteOfHourEnum.MinuteOfHour.t(),
          start_hour: integer,
          end_hour: integer,
          day_of_week: Google.Ads.Googleads.V11.Enums.DayOfWeekEnum.DayOfWeek.t()
        }

  defstruct start_minute: :UNSPECIFIED,
            end_minute: :UNSPECIFIED,
            start_hour: 0,
            end_hour: 0,
            day_of_week: :UNSPECIFIED

  field :start_minute, 1,
    type: Google.Ads.Googleads.V11.Enums.MinuteOfHourEnum.MinuteOfHour,
    json_name: "startMinute",
    enum: true

  field :end_minute, 2,
    type: Google.Ads.Googleads.V11.Enums.MinuteOfHourEnum.MinuteOfHour,
    json_name: "endMinute",
    enum: true

  field :start_hour, 6, type: :int32, json_name: "startHour"
  field :end_hour, 7, type: :int32, json_name: "endHour"

  field :day_of_week, 5,
    type: Google.Ads.Googleads.V11.Enums.DayOfWeekEnum.DayOfWeek,
    json_name: "dayOfWeek",
    enum: true
end
defmodule Google.Ads.Googleads.V11.Common.AgeRangeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V11.Enums.AgeRangeTypeEnum.AgeRangeType.t()
        }

  defstruct type: :UNSPECIFIED

  field :type, 1, type: Google.Ads.Googleads.V11.Enums.AgeRangeTypeEnum.AgeRangeType, enum: true
end
defmodule Google.Ads.Googleads.V11.Common.GenderInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V11.Enums.GenderTypeEnum.GenderType.t()
        }

  defstruct type: :UNSPECIFIED

  field :type, 1, type: Google.Ads.Googleads.V11.Enums.GenderTypeEnum.GenderType, enum: true
end
defmodule Google.Ads.Googleads.V11.Common.IncomeRangeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V11.Enums.IncomeRangeTypeEnum.IncomeRangeType.t()
        }

  defstruct type: :UNSPECIFIED

  field :type, 1,
    type: Google.Ads.Googleads.V11.Enums.IncomeRangeTypeEnum.IncomeRangeType,
    enum: true
end
defmodule Google.Ads.Googleads.V11.Common.ParentalStatusInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V11.Enums.ParentalStatusTypeEnum.ParentalStatusType.t()
        }

  defstruct type: :UNSPECIFIED

  field :type, 1,
    type: Google.Ads.Googleads.V11.Enums.ParentalStatusTypeEnum.ParentalStatusType,
    enum: true
end
defmodule Google.Ads.Googleads.V11.Common.YouTubeVideoInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          video_id: String.t()
        }

  defstruct video_id: ""

  field :video_id, 2, type: :string, json_name: "videoId"
end
defmodule Google.Ads.Googleads.V11.Common.YouTubeChannelInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_id: String.t()
        }

  defstruct channel_id: ""

  field :channel_id, 2, type: :string, json_name: "channelId"
end
defmodule Google.Ads.Googleads.V11.Common.UserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_list: String.t()
        }

  defstruct user_list: ""

  field :user_list, 2, type: :string, json_name: "userList"
end
defmodule Google.Ads.Googleads.V11.Common.ProximityInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          geo_point: Google.Ads.Googleads.V11.Common.GeoPointInfo.t() | nil,
          radius: float | :infinity | :negative_infinity | :nan,
          radius_units:
            Google.Ads.Googleads.V11.Enums.ProximityRadiusUnitsEnum.ProximityRadiusUnits.t(),
          address: Google.Ads.Googleads.V11.Common.AddressInfo.t() | nil
        }

  defstruct geo_point: nil,
            radius: 0.0,
            radius_units: :UNSPECIFIED,
            address: nil

  field :geo_point, 1, type: Google.Ads.Googleads.V11.Common.GeoPointInfo, json_name: "geoPoint"
  field :radius, 5, type: :double

  field :radius_units, 3,
    type: Google.Ads.Googleads.V11.Enums.ProximityRadiusUnitsEnum.ProximityRadiusUnits,
    json_name: "radiusUnits",
    enum: true

  field :address, 4, type: Google.Ads.Googleads.V11.Common.AddressInfo
end
defmodule Google.Ads.Googleads.V11.Common.GeoPointInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          longitude_in_micro_degrees: integer,
          latitude_in_micro_degrees: integer
        }

  defstruct longitude_in_micro_degrees: 0,
            latitude_in_micro_degrees: 0

  field :longitude_in_micro_degrees, 3, type: :int32, json_name: "longitudeInMicroDegrees"
  field :latitude_in_micro_degrees, 4, type: :int32, json_name: "latitudeInMicroDegrees"
end
defmodule Google.Ads.Googleads.V11.Common.AddressInfo do
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

  defstruct postal_code: "",
            province_code: "",
            country_code: "",
            province_name: "",
            street_address: "",
            street_address2: "",
            city_name: ""

  field :postal_code, 8, type: :string, json_name: "postalCode"
  field :province_code, 9, type: :string, json_name: "provinceCode"
  field :country_code, 10, type: :string, json_name: "countryCode"
  field :province_name, 11, type: :string, json_name: "provinceName"
  field :street_address, 12, type: :string, json_name: "streetAddress"
  field :street_address2, 13, type: :string, json_name: "streetAddress2"
  field :city_name, 14, type: :string, json_name: "cityName"
end
defmodule Google.Ads.Googleads.V11.Common.TopicInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic_constant: String.t(),
          path: [String.t()]
        }

  defstruct topic_constant: "",
            path: []

  field :topic_constant, 3, type: :string, json_name: "topicConstant"
  field :path, 4, repeated: true, type: :string
end
defmodule Google.Ads.Googleads.V11.Common.LanguageInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_constant: String.t()
        }

  defstruct language_constant: ""

  field :language_constant, 2, type: :string, json_name: "languageConstant"
end
defmodule Google.Ads.Googleads.V11.Common.IpBlockInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ip_address: String.t()
        }

  defstruct ip_address: ""

  field :ip_address, 2, type: :string, json_name: "ipAddress"
end
defmodule Google.Ads.Googleads.V11.Common.ContentLabelInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V11.Enums.ContentLabelTypeEnum.ContentLabelType.t()
        }

  defstruct type: :UNSPECIFIED

  field :type, 1,
    type: Google.Ads.Googleads.V11.Enums.ContentLabelTypeEnum.ContentLabelType,
    enum: true
end
defmodule Google.Ads.Googleads.V11.Common.CarrierInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          carrier_constant: String.t()
        }

  defstruct carrier_constant: ""

  field :carrier_constant, 2, type: :string, json_name: "carrierConstant"
end
defmodule Google.Ads.Googleads.V11.Common.UserInterestInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_interest_category: String.t()
        }

  defstruct user_interest_category: ""

  field :user_interest_category, 2, type: :string, json_name: "userInterestCategory"
end
defmodule Google.Ads.Googleads.V11.Common.WebpageInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          criterion_name: String.t(),
          conditions: [Google.Ads.Googleads.V11.Common.WebpageConditionInfo.t()],
          coverage_percentage: float | :infinity | :negative_infinity | :nan,
          sample: Google.Ads.Googleads.V11.Common.WebpageSampleInfo.t() | nil
        }

  defstruct criterion_name: "",
            conditions: [],
            coverage_percentage: 0.0,
            sample: nil

  field :criterion_name, 3, type: :string, json_name: "criterionName"
  field :conditions, 2, repeated: true, type: Google.Ads.Googleads.V11.Common.WebpageConditionInfo
  field :coverage_percentage, 4, type: :double, json_name: "coveragePercentage"
  field :sample, 5, type: Google.Ads.Googleads.V11.Common.WebpageSampleInfo
end
defmodule Google.Ads.Googleads.V11.Common.WebpageConditionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operand:
            Google.Ads.Googleads.V11.Enums.WebpageConditionOperandEnum.WebpageConditionOperand.t(),
          operator:
            Google.Ads.Googleads.V11.Enums.WebpageConditionOperatorEnum.WebpageConditionOperator.t(),
          argument: String.t()
        }

  defstruct operand: :UNSPECIFIED,
            operator: :UNSPECIFIED,
            argument: ""

  field :operand, 1,
    type: Google.Ads.Googleads.V11.Enums.WebpageConditionOperandEnum.WebpageConditionOperand,
    enum: true

  field :operator, 2,
    type: Google.Ads.Googleads.V11.Enums.WebpageConditionOperatorEnum.WebpageConditionOperator,
    enum: true

  field :argument, 4, type: :string
end
defmodule Google.Ads.Googleads.V11.Common.WebpageSampleInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sample_urls: [String.t()]
        }

  defstruct sample_urls: []

  field :sample_urls, 1, repeated: true, type: :string, json_name: "sampleUrls"
end
defmodule Google.Ads.Googleads.V11.Common.OperatingSystemVersionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operating_system_version_constant: String.t()
        }

  defstruct operating_system_version_constant: ""

  field :operating_system_version_constant, 2,
    type: :string,
    json_name: "operatingSystemVersionConstant"
end
defmodule Google.Ads.Googleads.V11.Common.AppPaymentModelInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V11.Enums.AppPaymentModelTypeEnum.AppPaymentModelType.t()
        }

  defstruct type: :UNSPECIFIED

  field :type, 1,
    type: Google.Ads.Googleads.V11.Enums.AppPaymentModelTypeEnum.AppPaymentModelType,
    enum: true
end
defmodule Google.Ads.Googleads.V11.Common.MobileDeviceInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mobile_device_constant: String.t()
        }

  defstruct mobile_device_constant: ""

  field :mobile_device_constant, 2, type: :string, json_name: "mobileDeviceConstant"
end
defmodule Google.Ads.Googleads.V11.Common.CustomAffinityInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          custom_affinity: String.t()
        }

  defstruct custom_affinity: ""

  field :custom_affinity, 2, type: :string, json_name: "customAffinity"
end
defmodule Google.Ads.Googleads.V11.Common.CustomIntentInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          custom_intent: String.t()
        }

  defstruct custom_intent: ""

  field :custom_intent, 2, type: :string, json_name: "customIntent"
end
defmodule Google.Ads.Googleads.V11.Common.LocationGroupInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feed: String.t(),
          geo_target_constants: [String.t()],
          radius: integer,
          radius_units:
            Google.Ads.Googleads.V11.Enums.LocationGroupRadiusUnitsEnum.LocationGroupRadiusUnits.t(),
          feed_item_sets: [String.t()]
        }

  defstruct feed: "",
            geo_target_constants: [],
            radius: 0,
            radius_units: :UNSPECIFIED,
            feed_item_sets: []

  field :feed, 5, type: :string
  field :geo_target_constants, 6, repeated: true, type: :string, json_name: "geoTargetConstants"
  field :radius, 7, type: :int64

  field :radius_units, 4,
    type: Google.Ads.Googleads.V11.Enums.LocationGroupRadiusUnitsEnum.LocationGroupRadiusUnits,
    json_name: "radiusUnits",
    enum: true

  field :feed_item_sets, 8, repeated: true, type: :string, json_name: "feedItemSets"
end
defmodule Google.Ads.Googleads.V11.Common.CustomAudienceInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          custom_audience: String.t()
        }

  defstruct custom_audience: ""

  field :custom_audience, 1, type: :string, json_name: "customAudience"
end
defmodule Google.Ads.Googleads.V11.Common.CombinedAudienceInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          combined_audience: String.t()
        }

  defstruct combined_audience: ""

  field :combined_audience, 1, type: :string, json_name: "combinedAudience"
end
defmodule Google.Ads.Googleads.V11.Common.AudienceInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          audience: String.t()
        }

  defstruct audience: ""

  field :audience, 1, type: :string
end
defmodule Google.Ads.Googleads.V11.Common.KeywordThemeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keyword_theme:
            {:keyword_theme_constant, String.t()} | {:free_form_keyword_theme, String.t()}
        }

  defstruct keyword_theme: nil

  oneof :keyword_theme, 0

  field :keyword_theme_constant, 1, type: :string, json_name: "keywordThemeConstant", oneof: 0
  field :free_form_keyword_theme, 2, type: :string, json_name: "freeFormKeywordTheme", oneof: 0
end
