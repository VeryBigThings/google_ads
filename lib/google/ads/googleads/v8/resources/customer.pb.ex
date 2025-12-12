defmodule Google.Ads.Googleads.V8.Resources.Customer do
  @moduledoc false
  use Protobuf, syntax: :proto2



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



  field :call_reporting_enabled, 10, optional: true, type: :bool
  field :call_conversion_reporting_enabled, 11, optional: true, type: :bool
  field :call_conversion_action, 12, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Resources.ConversionTrackingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :conversion_tracking_id, 3, optional: true, type: :int64
  field :cross_account_conversion_tracking_id, 4, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Resources.RemarketingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :google_global_site_tag, 2, optional: true, type: :string
end
