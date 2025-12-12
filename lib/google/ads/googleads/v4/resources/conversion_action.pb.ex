defmodule Google.Ads.Googleads.V4.Resources.ConversionAction.AttributionModelSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :attribution_model, 1,
    type: Google.Ads.Googleads.V4.Enums.AttributionModelEnum.AttributionModel,
    enum: true

  field :data_driven_model_status, 2,
    type: Google.Ads.Googleads.V4.Enums.DataDrivenModelStatusEnum.DataDrivenModelStatus,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Resources.ConversionAction.ValueSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :default_value, 1, type: Google.Protobuf.DoubleValue
  field :default_currency_code, 2, type: Google.Protobuf.StringValue
  field :always_use_default_value, 3, type: Google.Protobuf.BoolValue
end

defmodule Google.Ads.Googleads.V4.Resources.ConversionAction.ThirdPartyAppAnalyticsSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :event_name, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Resources.ConversionAction.FirebaseSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :event_name, 1, type: Google.Protobuf.StringValue
  field :project_id, 2, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Resources.ConversionAction do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value
  field :name, 3, type: Google.Protobuf.StringValue

  field :status, 4,
    type: Google.Ads.Googleads.V4.Enums.ConversionActionStatusEnum.ConversionActionStatus,
    enum: true

  field :type, 5,
    type: Google.Ads.Googleads.V4.Enums.ConversionActionTypeEnum.ConversionActionType,
    enum: true

  field :category, 6,
    type: Google.Ads.Googleads.V4.Enums.ConversionActionCategoryEnum.ConversionActionCategory,
    enum: true

  field :owner_customer, 7, type: Google.Protobuf.StringValue
  field :include_in_conversions_metric, 8, type: Google.Protobuf.BoolValue
  field :click_through_lookback_window_days, 9, type: Google.Protobuf.Int64Value
  field :view_through_lookback_window_days, 10, type: Google.Protobuf.Int64Value

  field :value_settings, 11,
    type: Google.Ads.Googleads.V4.Resources.ConversionAction.ValueSettings

  field :counting_type, 12,
    type:
      Google.Ads.Googleads.V4.Enums.ConversionActionCountingTypeEnum.ConversionActionCountingType,
    enum: true

  field :attribution_model_settings, 13,
    type: Google.Ads.Googleads.V4.Resources.ConversionAction.AttributionModelSettings

  field :tag_snippets, 14, repeated: true, type: Google.Ads.Googleads.V4.Common.TagSnippet
  field :phone_call_duration_seconds, 15, type: Google.Protobuf.Int64Value
  field :app_id, 16, type: Google.Protobuf.StringValue

  field :mobile_app_vendor, 17,
    type: Google.Ads.Googleads.V4.Enums.MobileAppVendorEnum.MobileAppVendor,
    enum: true

  field :firebase_settings, 18,
    type: Google.Ads.Googleads.V4.Resources.ConversionAction.FirebaseSettings

  field :third_party_app_analytics_settings, 19,
    type: Google.Ads.Googleads.V4.Resources.ConversionAction.ThirdPartyAppAnalyticsSettings
end
