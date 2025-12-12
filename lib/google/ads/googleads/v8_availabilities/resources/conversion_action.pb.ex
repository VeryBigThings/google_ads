defmodule Google.Ads.Googleads.V8Availabilities.Resources.ConversionAction.AttributionModelSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :attribution_model, 1,
    type: Google.Ads.Googleads.V8Availabilities.Enums.AttributionModelEnum.AttributionModel,
    enum: true

  field :data_driven_model_status, 2,
    type: Google.Ads.Googleads.V8Availabilities.Enums.DataDrivenModelStatusEnum.DataDrivenModelStatus,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Resources.ConversionAction.ValueSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :default_value, 4, type: :double
  field :default_currency_code, 5, type: :string
  field :always_use_default_value, 6, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Resources.ConversionAction.ThirdPartyAppAnalyticsSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :event_name, 2, type: :string
  field :provider_name, 3, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Resources.ConversionAction.FirebaseSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :event_name, 3, type: :string
  field :project_id, 4, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Resources.ConversionAction do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :id, 21, type: :int64
  field :name, 22, type: :string

  field :status, 4,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ConversionActionStatusEnum.ConversionActionStatus,
    enum: true

  field :type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ConversionActionTypeEnum.ConversionActionType,
    enum: true

  field :category, 6,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ConversionActionCategoryEnum.ConversionActionCategory,
    enum: true

  field :owner_customer, 23, type: :string
  field :include_in_conversions_metric, 24, type: :bool
  field :click_through_lookback_window_days, 25, type: :int64
  field :view_through_lookback_window_days, 26, type: :int64

  field :value_settings, 11,
    type: Google.Ads.Googleads.V8Availabilities.Resources.ConversionAction.ValueSettings

  field :counting_type, 12,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.ConversionActionCountingTypeEnum.ConversionActionCountingType,
    enum: true

  field :attribution_model_settings, 13,
    type: Google.Ads.Googleads.V8Availabilities.Resources.ConversionAction.AttributionModelSettings

  field :tag_snippets, 14, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Common.TagSnippet
  field :phone_call_duration_seconds, 27, type: :int64
  field :app_id, 28, type: :string

  field :mobile_app_vendor, 17,
    type: Google.Ads.Googleads.V8Availabilities.Enums.MobileAppVendorEnum.MobileAppVendor,
    enum: true

  field :firebase_settings, 18,
    type: Google.Ads.Googleads.V8Availabilities.Resources.ConversionAction.FirebaseSettings

  field :third_party_app_analytics_settings, 19,
    type: Google.Ads.Googleads.V8Availabilities.Resources.ConversionAction.ThirdPartyAppAnalyticsSettings
end
