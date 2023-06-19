defmodule Google.Ads.Googleads.V13.Errors.AdErrorEnum.AdError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :AD_CUSTOMIZERS_NOT_SUPPORTED_FOR_AD_TYPE, 2
  field :APPROXIMATELY_TOO_LONG, 3
  field :APPROXIMATELY_TOO_SHORT, 4
  field :BAD_SNIPPET, 5
  field :CANNOT_MODIFY_AD, 6
  field :CANNOT_SET_BUSINESS_NAME_IF_URL_SET, 7
  field :CANNOT_SET_FIELD, 8
  field :CANNOT_SET_FIELD_WITH_ORIGIN_AD_ID_SET, 9
  field :CANNOT_SET_FIELD_WITH_AD_ID_SET_FOR_SHARING, 10
  field :CANNOT_SET_ALLOW_FLEXIBLE_COLOR_FALSE, 11
  field :CANNOT_SET_COLOR_CONTROL_WHEN_NATIVE_FORMAT_SETTING, 12
  field :CANNOT_SET_URL, 13
  field :CANNOT_SET_WITHOUT_FINAL_URLS, 14
  field :CANNOT_SET_WITH_FINAL_URLS, 15
  field :CANNOT_SET_WITH_URL_DATA, 17
  field :CANNOT_USE_AD_SUBCLASS_FOR_OPERATOR, 18
  field :CUSTOMER_NOT_APPROVED_MOBILEADS, 19
  field :CUSTOMER_NOT_APPROVED_THIRDPARTY_ADS, 20
  field :CUSTOMER_NOT_APPROVED_THIRDPARTY_REDIRECT_ADS, 21
  field :CUSTOMER_NOT_ELIGIBLE, 22
  field :CUSTOMER_NOT_ELIGIBLE_FOR_UPDATING_BEACON_URL, 23
  field :DIMENSION_ALREADY_IN_UNION, 24
  field :DIMENSION_MUST_BE_SET, 25
  field :DIMENSION_NOT_IN_UNION, 26
  field :DISPLAY_URL_CANNOT_BE_SPECIFIED, 27
  field :DOMESTIC_PHONE_NUMBER_FORMAT, 28
  field :EMERGENCY_PHONE_NUMBER, 29
  field :EMPTY_FIELD, 30
  field :FEED_ATTRIBUTE_MUST_HAVE_MAPPING_FOR_TYPE_ID, 31
  field :FEED_ATTRIBUTE_MAPPING_TYPE_MISMATCH, 32
  field :ILLEGAL_AD_CUSTOMIZER_TAG_USE, 33
  field :ILLEGAL_TAG_USE, 34
  field :INCONSISTENT_DIMENSIONS, 35
  field :INCONSISTENT_STATUS_IN_TEMPLATE_UNION, 36
  field :INCORRECT_LENGTH, 37
  field :INELIGIBLE_FOR_UPGRADE, 38
  field :INVALID_AD_ADDRESS_CAMPAIGN_TARGET, 39
  field :INVALID_AD_TYPE, 40
  field :INVALID_ATTRIBUTES_FOR_MOBILE_IMAGE, 41
  field :INVALID_ATTRIBUTES_FOR_MOBILE_TEXT, 42
  field :INVALID_CALL_TO_ACTION_TEXT, 43
  field :INVALID_CHARACTER_FOR_URL, 44
  field :INVALID_COUNTRY_CODE, 45
  field :INVALID_EXPANDED_DYNAMIC_SEARCH_AD_TAG, 47
  field :INVALID_INPUT, 48
  field :INVALID_MARKUP_LANGUAGE, 49
  field :INVALID_MOBILE_CARRIER, 50
  field :INVALID_MOBILE_CARRIER_TARGET, 51
  field :INVALID_NUMBER_OF_ELEMENTS, 52
  field :INVALID_PHONE_NUMBER_FORMAT, 53
  field :INVALID_RICH_MEDIA_CERTIFIED_VENDOR_FORMAT_ID, 54
  field :INVALID_TEMPLATE_DATA, 55
  field :INVALID_TEMPLATE_ELEMENT_FIELD_TYPE, 56
  field :INVALID_TEMPLATE_ID, 57
  field :LINE_TOO_WIDE, 58
  field :MISSING_AD_CUSTOMIZER_MAPPING, 59
  field :MISSING_ADDRESS_COMPONENT, 60
  field :MISSING_ADVERTISEMENT_NAME, 61
  field :MISSING_BUSINESS_NAME, 62
  field :MISSING_DESCRIPTION1, 63
  field :MISSING_DESCRIPTION2, 64
  field :MISSING_DESTINATION_URL_TAG, 65
  field :MISSING_LANDING_PAGE_URL_TAG, 66
  field :MISSING_DIMENSION, 67
  field :MISSING_DISPLAY_URL, 68
  field :MISSING_HEADLINE, 69
  field :MISSING_HEIGHT, 70
  field :MISSING_IMAGE, 71
  field :MISSING_MARKETING_IMAGE_OR_PRODUCT_VIDEOS, 72
  field :MISSING_MARKUP_LANGUAGES, 73
  field :MISSING_MOBILE_CARRIER, 74
  field :MISSING_PHONE, 75
  field :MISSING_REQUIRED_TEMPLATE_FIELDS, 76
  field :MISSING_TEMPLATE_FIELD_VALUE, 77
  field :MISSING_TEXT, 78
  field :MISSING_VISIBLE_URL, 79
  field :MISSING_WIDTH, 80
  field :MULTIPLE_DISTINCT_FEEDS_UNSUPPORTED, 81
  field :MUST_USE_TEMP_AD_UNION_ID_ON_ADD, 82
  field :TOO_LONG, 83
  field :TOO_SHORT, 84
  field :UNION_DIMENSIONS_CANNOT_CHANGE, 85
  field :UNKNOWN_ADDRESS_COMPONENT, 86
  field :UNKNOWN_FIELD_NAME, 87
  field :UNKNOWN_UNIQUE_NAME, 88
  field :UNSUPPORTED_DIMENSIONS, 89
  field :URL_INVALID_SCHEME, 90
  field :URL_INVALID_TOP_LEVEL_DOMAIN, 91
  field :URL_MALFORMED, 92
  field :URL_NO_HOST, 93
  field :URL_NOT_EQUIVALENT, 94
  field :URL_HOST_NAME_TOO_LONG, 95
  field :URL_NO_SCHEME, 96
  field :URL_NO_TOP_LEVEL_DOMAIN, 97
  field :URL_PATH_NOT_ALLOWED, 98
  field :URL_PORT_NOT_ALLOWED, 99
  field :URL_QUERY_NOT_ALLOWED, 100
  field :URL_SCHEME_BEFORE_EXPANDED_DYNAMIC_SEARCH_AD_TAG, 102
  field :USER_DOES_NOT_HAVE_ACCESS_TO_TEMPLATE, 103
  field :INCONSISTENT_EXPANDABLE_SETTINGS, 104
  field :INVALID_FORMAT, 105
  field :INVALID_FIELD_TEXT, 106
  field :ELEMENT_NOT_PRESENT, 107
  field :IMAGE_ERROR, 108
  field :VALUE_NOT_IN_RANGE, 109
  field :FIELD_NOT_PRESENT, 110
  field :ADDRESS_NOT_COMPLETE, 111
  field :ADDRESS_INVALID, 112
  field :VIDEO_RETRIEVAL_ERROR, 113
  field :AUDIO_ERROR, 114
  field :INVALID_YOUTUBE_DISPLAY_URL, 115
  field :TOO_MANY_PRODUCT_IMAGES, 116
  field :TOO_MANY_PRODUCT_VIDEOS, 117
  field :INCOMPATIBLE_AD_TYPE_AND_DEVICE_PREFERENCE, 118
  field :CALLTRACKING_NOT_SUPPORTED_FOR_COUNTRY, 119
  field :CARRIER_SPECIFIC_SHORT_NUMBER_NOT_ALLOWED, 120
  field :DISALLOWED_NUMBER_TYPE, 121
  field :PHONE_NUMBER_NOT_SUPPORTED_FOR_COUNTRY, 122
  field :PHONE_NUMBER_NOT_SUPPORTED_WITH_CALLTRACKING_FOR_COUNTRY, 123
  field :PREMIUM_RATE_NUMBER_NOT_ALLOWED, 124
  field :VANITY_PHONE_NUMBER_NOT_ALLOWED, 125
  field :INVALID_CALL_CONVERSION_TYPE_ID, 126
  field :CANNOT_DISABLE_CALL_CONVERSION_AND_SET_CONVERSION_TYPE_ID, 127
  field :CANNOT_SET_PATH2_WITHOUT_PATH1, 128
  field :MISSING_DYNAMIC_SEARCH_ADS_SETTING_DOMAIN_NAME, 129
  field :INCOMPATIBLE_WITH_RESTRICTION_TYPE, 130
  field :CUSTOMER_CONSENT_FOR_CALL_RECORDING_REQUIRED, 131
  field :MISSING_IMAGE_OR_MEDIA_BUNDLE, 132
  field :PRODUCT_TYPE_NOT_SUPPORTED_IN_THIS_CAMPAIGN, 133
  field :PLACEHOLDER_CANNOT_HAVE_EMPTY_DEFAULT_VALUE, 134
  field :PLACEHOLDER_COUNTDOWN_FUNCTION_CANNOT_HAVE_DEFAULT_VALUE, 135
  field :PLACEHOLDER_DEFAULT_VALUE_MISSING, 136
  field :UNEXPECTED_PLACEHOLDER_DEFAULT_VALUE, 137
  field :AD_CUSTOMIZERS_MAY_NOT_BE_ADJACENT, 138
  field :UPDATING_AD_WITH_NO_ENABLED_ASSOCIATION, 139
  field :CALL_AD_VERIFICATION_URL_FINAL_URL_DOES_NOT_HAVE_SAME_DOMAIN, 140
  field :CALL_AD_FINAL_URL_AND_VERIFICATION_URL_CANNOT_BOTH_BE_EMPTY, 154
  field :TOO_MANY_AD_CUSTOMIZERS, 141
  field :INVALID_AD_CUSTOMIZER_FORMAT, 142
  field :NESTED_AD_CUSTOMIZER_SYNTAX, 143
  field :UNSUPPORTED_AD_CUSTOMIZER_SYNTAX, 144
  field :UNPAIRED_BRACE_IN_AD_CUSTOMIZER_TAG, 145
  field :MORE_THAN_ONE_COUNTDOWN_TAG_TYPE_EXISTS, 146
  field :DATE_TIME_IN_COUNTDOWN_TAG_IS_INVALID, 147
  field :DATE_TIME_IN_COUNTDOWN_TAG_IS_PAST, 148
  field :UNRECOGNIZED_AD_CUSTOMIZER_TAG_FOUND, 149
  field :CUSTOMIZER_TYPE_FORBIDDEN_FOR_FIELD, 150
  field :INVALID_CUSTOMIZER_ATTRIBUTE_NAME, 151
  field :STORE_MISMATCH, 152
  field :MISSING_REQUIRED_IMAGE_ASPECT_RATIO, 153
  field :MISMATCHED_ASPECT_RATIOS, 155
  field :DUPLICATE_IMAGE_ACROSS_CAROUSEL_CARDS, 156
end

defmodule Google.Ads.Googleads.V13.Errors.AdErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end