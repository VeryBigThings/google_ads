defmodule Google.Ads.Googleads.V8.Resources.Customer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          descriptive_name: Google.Protobuf.StringValue.t() | nil,
          currency_code: Google.Protobuf.StringValue.t() | nil,
          time_zone: Google.Protobuf.StringValue.t() | nil,
          tracking_url_template: Google.Protobuf.StringValue.t() | nil,
          final_url_suffix: Google.Protobuf.StringValue.t() | nil,
          auto_tagging_enabled: Google.Protobuf.BoolValue.t() | nil,
          has_partners_badge: Google.Protobuf.BoolValue.t() | nil,
          manager: Google.Protobuf.BoolValue.t() | nil,
          test_account: Google.Protobuf.BoolValue.t() | nil,
          call_reporting_setting:
            Google.Ads.Googleads.V8.Resources.CallReportingSetting.t() | nil,
          conversion_tracking_setting:
            Google.Ads.Googleads.V8.Resources.ConversionTrackingSetting.t() | nil,
          remarketing_setting: Google.Ads.Googleads.V8.Resources.RemarketingSetting.t() | nil,
          pay_per_conversion_eligibility_failure_reasons: [
            [
              Google.Ads.Googleads.V8.Enums.CustomerPayPerConversionEligibilityFailureReasonEnum.CustomerPayPerConversionEligibilityFailureReason.t()
            ]
          ],
          optimization_score: Google.Protobuf.DoubleValue.t() | nil,
          optimization_score_weight: float | :infinity | :negative_infinity | :nan
        }

  defstruct [
    :resource_name,
    :id,
    :descriptive_name,
    :currency_code,
    :time_zone,
    :tracking_url_template,
    :final_url_suffix,
    :auto_tagging_enabled,
    :has_partners_badge,
    :manager,
    :test_account,
    :call_reporting_setting,
    :conversion_tracking_setting,
    :remarketing_setting,
    :pay_per_conversion_eligibility_failure_reasons,
    :optimization_score,
    :optimization_score_weight
  ]

  field :resource_name, 1, type: :string
  field :id, 19, type: Google.Protobuf.Int64Value
  field :descriptive_name, 20, type: Google.Protobuf.StringValue
  field :currency_code, 21, type: Google.Protobuf.StringValue
  field :time_zone, 22, type: Google.Protobuf.StringValue
  field :tracking_url_template, 23, type: Google.Protobuf.StringValue
  field :final_url_suffix, 24, type: Google.Protobuf.StringValue
  field :auto_tagging_enabled, 25, type: Google.Protobuf.BoolValue
  field :has_partners_badge, 26, type: Google.Protobuf.BoolValue
  field :manager, 27, type: Google.Protobuf.BoolValue
  field :test_account, 28, type: Google.Protobuf.BoolValue
  field :call_reporting_setting, 10, type: Google.Ads.Googleads.V8.Resources.CallReportingSetting

  field :conversion_tracking_setting, 14,
    type: Google.Ads.Googleads.V8.Resources.ConversionTrackingSetting

  field :remarketing_setting, 15, type: Google.Ads.Googleads.V8.Resources.RemarketingSetting

  field :pay_per_conversion_eligibility_failure_reasons, 16,
    repeated: true,
    type:
      Google.Ads.Googleads.V8.Enums.CustomerPayPerConversionEligibilityFailureReasonEnum.CustomerPayPerConversionEligibilityFailureReason,
    enum: true

  field :optimization_score, 29, type: Google.Protobuf.DoubleValue
  field :optimization_score_weight, 30, type: :double
end

defmodule Google.Ads.Googleads.V8.Resources.CallReportingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          call_reporting_enabled: Google.Protobuf.BoolValue.t() | nil,
          call_conversion_reporting_enabled: Google.Protobuf.BoolValue.t() | nil,
          call_conversion_action: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:call_reporting_enabled, :call_conversion_reporting_enabled, :call_conversion_action]

  field :call_reporting_enabled, 10, type: Google.Protobuf.BoolValue
  field :call_conversion_reporting_enabled, 11, type: Google.Protobuf.BoolValue
  field :call_conversion_action, 12, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V8.Resources.ConversionTrackingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversion_tracking_id: Google.Protobuf.Int64Value.t() | nil,
          cross_account_conversion_tracking_id: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:conversion_tracking_id, :cross_account_conversion_tracking_id]

  field :conversion_tracking_id, 3, type: Google.Protobuf.Int64Value
  field :cross_account_conversion_tracking_id, 4, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V8.Resources.RemarketingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          google_global_site_tag: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:google_global_site_tag]

  field :google_global_site_tag, 2, type: Google.Protobuf.StringValue
end
