defmodule Google.Ads.Googleads.V8.Resources.ConversionAction.AttributionModelSettings do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :attribution_model, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.AttributionModelEnum.AttributionModel,
    enum: true

  field :data_driven_model_status, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.DataDrivenModelStatusEnum.DataDrivenModelStatus,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Resources.ConversionAction.ValueSettings do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :default_value, 4, optional: true, type: :double
  field :default_currency_code, 5, optional: true, type: :string
  field :always_use_default_value, 6, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Resources.ConversionAction.ThirdPartyAppAnalyticsSettings do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :event_name, 2, optional: true, type: :string
  field :provider_name, 3, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Resources.ConversionAction.FirebaseSettings do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :event_name, 3, optional: true, type: :string
  field :project_id, 4, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Resources.ConversionAction do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :id, 21, optional: true, type: :int64
  field :name, 22, optional: true, type: :string

  field :status, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ConversionActionStatusEnum.ConversionActionStatus,
    enum: true

  field :type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ConversionActionTypeEnum.ConversionActionType,
    enum: true

  field :category, 6,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ConversionActionCategoryEnum.ConversionActionCategory,
    enum: true

  field :owner_customer, 23, optional: true, type: :string
  field :include_in_conversions_metric, 24, optional: true, type: :bool
  field :click_through_lookback_window_days, 25, optional: true, type: :int64
  field :view_through_lookback_window_days, 26, optional: true, type: :int64

  field :value_settings, 11,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.ConversionAction.ValueSettings

  field :counting_type, 12,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.ConversionActionCountingTypeEnum.ConversionActionCountingType,
    enum: true

  field :attribution_model_settings, 13,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.ConversionAction.AttributionModelSettings

  field :tag_snippets, 14, repeated: true, type: Google.Ads.Googleads.V8.Common.TagSnippet
  field :phone_call_duration_seconds, 27, optional: true, type: :int64
  field :app_id, 28, optional: true, type: :string

  field :mobile_app_vendor, 17,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.MobileAppVendorEnum.MobileAppVendor,
    enum: true

  field :firebase_settings, 18,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.ConversionAction.FirebaseSettings

  field :third_party_app_analytics_settings, 19,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.ConversionAction.ThirdPartyAppAnalyticsSettings
end
