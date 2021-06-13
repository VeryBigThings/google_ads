defmodule Google.Ads.Googleads.V8.Resources.Customer do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          descriptive_name: String.t(),
          currency_code: String.t(),
          time_zone: String.t(),
          tracking_url_template: String.t(),
          final_url_suffix: String.t(),
          auto_tagging_enabled: boolean,
          has_partners_badge: boolean,
          manager: boolean,
          test_account: boolean,
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
          optimization_score: float | :infinity | :negative_infinity | :nan,
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

  field :resource_name, 1, optional: true, type: :string
  field :id, 19, optional: true, type: :int64
  field :descriptive_name, 20, optional: true, type: :string
  field :currency_code, 21, optional: true, type: :string
  field :time_zone, 22, optional: true, type: :string
  field :tracking_url_template, 23, optional: true, type: :string
  field :final_url_suffix, 24, optional: true, type: :string
  field :auto_tagging_enabled, 25, optional: true, type: :bool
  field :has_partners_badge, 26, optional: true, type: :bool
  field :manager, 27, optional: true, type: :bool
  field :test_account, 28, optional: true, type: :bool

  field :call_reporting_setting, 10,
    required: true,
    type: Google.Ads.Googleads.V8.Resources.CallReportingSetting

  field :conversion_tracking_setting, 14,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.ConversionTrackingSetting

  field :remarketing_setting, 15,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.RemarketingSetting

  field :pay_per_conversion_eligibility_failure_reasons, 16,
    repeated: true,
    type:
      Google.Ads.Googleads.V8.Enums.CustomerPayPerConversionEligibilityFailureReasonEnum.CustomerPayPerConversionEligibilityFailureReason,
    enum: true

  field :optimization_score, 29, optional: true, type: :double
  field :optimization_score_weight, 30, optional: true, type: :double
end

defmodule Google.Ads.Googleads.V8.Resources.CallReportingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          call_reporting_enabled: boolean,
          call_conversion_reporting_enabled: boolean,
          call_conversion_action: String.t()
        }

  defstruct [:call_reporting_enabled, :call_conversion_reporting_enabled, :call_conversion_action]

  field :call_reporting_enabled, 10, optional: true, type: :bool
  field :call_conversion_reporting_enabled, 11, optional: true, type: :bool
  field :call_conversion_action, 12, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Resources.ConversionTrackingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          conversion_tracking_id: integer,
          cross_account_conversion_tracking_id: integer
        }

  defstruct [:conversion_tracking_id, :cross_account_conversion_tracking_id]

  field :conversion_tracking_id, 3, optional: true, type: :int64
  field :cross_account_conversion_tracking_id, 4, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Resources.RemarketingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          google_global_site_tag: String.t()
        }

  defstruct [:google_global_site_tag]

  field :google_global_site_tag, 2, optional: true, type: :string
end
