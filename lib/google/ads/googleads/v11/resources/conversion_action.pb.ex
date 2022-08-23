defmodule Google.Ads.Googleads.V11.Resources.ConversionAction.AttributionModelSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attribution_model:
            Google.Ads.Googleads.V11.Enums.AttributionModelEnum.AttributionModel.t(),
          data_driven_model_status:
            Google.Ads.Googleads.V11.Enums.DataDrivenModelStatusEnum.DataDrivenModelStatus.t()
        }

  defstruct attribution_model: :UNSPECIFIED,
            data_driven_model_status: :UNSPECIFIED

  field :attribution_model, 1,
    type: Google.Ads.Googleads.V11.Enums.AttributionModelEnum.AttributionModel,
    json_name: "attributionModel",
    enum: true

  field :data_driven_model_status, 2,
    type: Google.Ads.Googleads.V11.Enums.DataDrivenModelStatusEnum.DataDrivenModelStatus,
    json_name: "dataDrivenModelStatus",
    enum: true,
    deprecated: false
end
defmodule Google.Ads.Googleads.V11.Resources.ConversionAction.ValueSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          default_value: float | :infinity | :negative_infinity | :nan,
          default_currency_code: String.t(),
          always_use_default_value: boolean
        }

  defstruct default_value: 0.0,
            default_currency_code: "",
            always_use_default_value: false

  field :default_value, 4, type: :double, json_name: "defaultValue"
  field :default_currency_code, 5, type: :string, json_name: "defaultCurrencyCode"
  field :always_use_default_value, 6, type: :bool, json_name: "alwaysUseDefaultValue"
end
defmodule Google.Ads.Googleads.V11.Resources.ConversionAction.ThirdPartyAppAnalyticsSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          event_name: String.t(),
          provider_name: String.t()
        }

  defstruct event_name: "",
            provider_name: ""

  field :event_name, 2, type: :string, json_name: "eventName", deprecated: false
  field :provider_name, 3, type: :string, json_name: "providerName", deprecated: false
end
defmodule Google.Ads.Googleads.V11.Resources.ConversionAction.FirebaseSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          event_name: String.t(),
          project_id: String.t(),
          property_id: integer,
          property_name: String.t()
        }

  defstruct event_name: "",
            project_id: "",
            property_id: 0,
            property_name: ""

  field :event_name, 3, type: :string, json_name: "eventName", deprecated: false
  field :project_id, 4, type: :string, json_name: "projectId", deprecated: false
  field :property_id, 5, type: :int64, json_name: "propertyId", deprecated: false
  field :property_name, 6, type: :string, json_name: "propertyName", deprecated: false
end
defmodule Google.Ads.Googleads.V11.Resources.ConversionAction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          status:
            Google.Ads.Googleads.V11.Enums.ConversionActionStatusEnum.ConversionActionStatus.t(),
          type: Google.Ads.Googleads.V11.Enums.ConversionActionTypeEnum.ConversionActionType.t(),
          origin: Google.Ads.Googleads.V11.Enums.ConversionOriginEnum.ConversionOrigin.t(),
          primary_for_goal: boolean,
          category:
            Google.Ads.Googleads.V11.Enums.ConversionActionCategoryEnum.ConversionActionCategory.t(),
          owner_customer: String.t(),
          include_in_conversions_metric: boolean,
          click_through_lookback_window_days: integer,
          view_through_lookback_window_days: integer,
          value_settings:
            Google.Ads.Googleads.V11.Resources.ConversionAction.ValueSettings.t() | nil,
          counting_type:
            Google.Ads.Googleads.V11.Enums.ConversionActionCountingTypeEnum.ConversionActionCountingType.t(),
          attribution_model_settings:
            Google.Ads.Googleads.V11.Resources.ConversionAction.AttributionModelSettings.t() | nil,
          tag_snippets: [Google.Ads.Googleads.V11.Common.TagSnippet.t()],
          phone_call_duration_seconds: integer,
          app_id: String.t(),
          mobile_app_vendor:
            Google.Ads.Googleads.V11.Enums.MobileAppVendorEnum.MobileAppVendor.t(),
          firebase_settings:
            Google.Ads.Googleads.V11.Resources.ConversionAction.FirebaseSettings.t() | nil,
          third_party_app_analytics_settings:
            Google.Ads.Googleads.V11.Resources.ConversionAction.ThirdPartyAppAnalyticsSettings.t()
            | nil
        }

  defstruct resource_name: "",
            id: 0,
            name: "",
            status: :UNSPECIFIED,
            type: :UNSPECIFIED,
            origin: :UNSPECIFIED,
            primary_for_goal: false,
            category: :UNSPECIFIED,
            owner_customer: "",
            include_in_conversions_metric: false,
            click_through_lookback_window_days: 0,
            view_through_lookback_window_days: 0,
            value_settings: nil,
            counting_type: :UNSPECIFIED,
            attribution_model_settings: nil,
            tag_snippets: [],
            phone_call_duration_seconds: 0,
            app_id: "",
            mobile_app_vendor: :UNSPECIFIED,
            firebase_settings: nil,
            third_party_app_analytics_settings: nil

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 21, type: :int64, deprecated: false
  field :name, 22, type: :string

  field :status, 4,
    type: Google.Ads.Googleads.V11.Enums.ConversionActionStatusEnum.ConversionActionStatus,
    enum: true

  field :type, 5,
    type: Google.Ads.Googleads.V11.Enums.ConversionActionTypeEnum.ConversionActionType,
    enum: true,
    deprecated: false

  field :origin, 30,
    type: Google.Ads.Googleads.V11.Enums.ConversionOriginEnum.ConversionOrigin,
    enum: true,
    deprecated: false

  field :primary_for_goal, 31, type: :bool, json_name: "primaryForGoal"

  field :category, 6,
    type: Google.Ads.Googleads.V11.Enums.ConversionActionCategoryEnum.ConversionActionCategory,
    enum: true

  field :owner_customer, 23, type: :string, json_name: "ownerCustomer", deprecated: false
  field :include_in_conversions_metric, 24, type: :bool, json_name: "includeInConversionsMetric"

  field :click_through_lookback_window_days, 25,
    type: :int64,
    json_name: "clickThroughLookbackWindowDays"

  field :view_through_lookback_window_days, 26,
    type: :int64,
    json_name: "viewThroughLookbackWindowDays"

  field :value_settings, 11,
    type: Google.Ads.Googleads.V11.Resources.ConversionAction.ValueSettings,
    json_name: "valueSettings"

  field :counting_type, 12,
    type:
      Google.Ads.Googleads.V11.Enums.ConversionActionCountingTypeEnum.ConversionActionCountingType,
    json_name: "countingType",
    enum: true

  field :attribution_model_settings, 13,
    type: Google.Ads.Googleads.V11.Resources.ConversionAction.AttributionModelSettings,
    json_name: "attributionModelSettings"

  field :tag_snippets, 14,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.TagSnippet,
    json_name: "tagSnippets",
    deprecated: false

  field :phone_call_duration_seconds, 27, type: :int64, json_name: "phoneCallDurationSeconds"
  field :app_id, 28, type: :string, json_name: "appId"

  field :mobile_app_vendor, 17,
    type: Google.Ads.Googleads.V11.Enums.MobileAppVendorEnum.MobileAppVendor,
    json_name: "mobileAppVendor",
    enum: true,
    deprecated: false

  field :firebase_settings, 18,
    type: Google.Ads.Googleads.V11.Resources.ConversionAction.FirebaseSettings,
    json_name: "firebaseSettings",
    deprecated: false

  field :third_party_app_analytics_settings, 19,
    type: Google.Ads.Googleads.V11.Resources.ConversionAction.ThirdPartyAppAnalyticsSettings,
    json_name: "thirdPartyAppAnalyticsSettings",
    deprecated: false
end
