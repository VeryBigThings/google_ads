defmodule Google.Ads.Googleads.V2.Resources.ConversionAction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          status: atom | integer,
          type: atom | integer,
          category: atom | integer,
          owner_customer: Google.Protobuf.StringValue.t() | nil,
          include_in_conversions_metric: Google.Protobuf.BoolValue.t() | nil,
          click_through_lookback_window_days: Google.Protobuf.Int64Value.t() | nil,
          view_through_lookback_window_days: Google.Protobuf.Int64Value.t() | nil,
          value_settings:
            Google.Ads.Googleads.V2.Resources.ConversionAction.ValueSettings.t() | nil,
          counting_type: atom | integer,
          attribution_model_settings:
            Google.Ads.Googleads.V2.Resources.ConversionAction.AttributionModelSettings.t() | nil,
          tag_snippets: [Google.Ads.Googleads.V2.Common.TagSnippet.t()],
          phone_call_duration_seconds: Google.Protobuf.Int64Value.t() | nil,
          app_id: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [
    :resource_name,
    :id,
    :name,
    :status,
    :type,
    :category,
    :owner_customer,
    :include_in_conversions_metric,
    :click_through_lookback_window_days,
    :view_through_lookback_window_days,
    :value_settings,
    :counting_type,
    :attribution_model_settings,
    :tag_snippets,
    :phone_call_duration_seconds,
    :app_id
  ]

  field(:resource_name, 1, type: :string)
  field(:id, 2, type: Google.Protobuf.Int64Value)
  field(:name, 3, type: Google.Protobuf.StringValue)

  field(:status, 4,
    type: Google.Ads.Googleads.V2.Enums.ConversionActionStatusEnum.ConversionActionStatus,
    enum: true
  )

  field(:type, 5,
    type: Google.Ads.Googleads.V2.Enums.ConversionActionTypeEnum.ConversionActionType,
    enum: true
  )

  field(:category, 6,
    type: Google.Ads.Googleads.V2.Enums.ConversionActionCategoryEnum.ConversionActionCategory,
    enum: true
  )

  field(:owner_customer, 7, type: Google.Protobuf.StringValue)
  field(:include_in_conversions_metric, 8, type: Google.Protobuf.BoolValue)
  field(:click_through_lookback_window_days, 9, type: Google.Protobuf.Int64Value)
  field(:view_through_lookback_window_days, 10, type: Google.Protobuf.Int64Value)

  field(:value_settings, 11,
    type: Google.Ads.Googleads.V2.Resources.ConversionAction.ValueSettings
  )

  field(:counting_type, 12,
    type:
      Google.Ads.Googleads.V2.Enums.ConversionActionCountingTypeEnum.ConversionActionCountingType,
    enum: true
  )

  field(:attribution_model_settings, 13,
    type: Google.Ads.Googleads.V2.Resources.ConversionAction.AttributionModelSettings
  )

  field(:tag_snippets, 14, repeated: true, type: Google.Ads.Googleads.V2.Common.TagSnippet)
  field(:phone_call_duration_seconds, 15, type: Google.Protobuf.Int64Value)
  field(:app_id, 16, type: Google.Protobuf.StringValue)
end

defmodule Google.Ads.Googleads.V2.Resources.ConversionAction.AttributionModelSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attribution_model: atom | integer,
          data_driven_model_status: atom | integer
        }
  defstruct [:attribution_model, :data_driven_model_status]

  field(:attribution_model, 1,
    type: Google.Ads.Googleads.V2.Enums.AttributionModelEnum.AttributionModel,
    enum: true
  )

  field(:data_driven_model_status, 2,
    type: Google.Ads.Googleads.V2.Enums.DataDrivenModelStatusEnum.DataDrivenModelStatus,
    enum: true
  )
end

defmodule Google.Ads.Googleads.V2.Resources.ConversionAction.ValueSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          default_value: Google.Protobuf.DoubleValue.t() | nil,
          default_currency_code: Google.Protobuf.StringValue.t() | nil,
          always_use_default_value: Google.Protobuf.BoolValue.t() | nil
        }
  defstruct [:default_value, :default_currency_code, :always_use_default_value]

  field(:default_value, 1, type: Google.Protobuf.DoubleValue)
  field(:default_currency_code, 2, type: Google.Protobuf.StringValue)
  field(:always_use_default_value, 3, type: Google.Protobuf.BoolValue)
end
