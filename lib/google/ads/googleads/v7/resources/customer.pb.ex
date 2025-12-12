defmodule Google.Ads.Googleads.V7.Resources.Customer do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :id, 19, type: :int64
  field :descriptive_name, 20, type: :string
  field :currency_code, 21, type: :string
  field :time_zone, 22, type: :string
  field :tracking_url_template, 23, type: :string
  field :final_url_suffix, 24, type: :string
  field :auto_tagging_enabled, 25, type: :bool
  field :has_partners_badge, 26, type: :bool
  field :manager, 27, type: :bool
  field :test_account, 28, type: :bool
  field :call_reporting_setting, 10, type: Google.Ads.Googleads.V7.Resources.CallReportingSetting

  field :conversion_tracking_setting, 14,
    type: Google.Ads.Googleads.V7.Resources.ConversionTrackingSetting

  field :remarketing_setting, 15, type: Google.Ads.Googleads.V7.Resources.RemarketingSetting

  field :pay_per_conversion_eligibility_failure_reasons, 16,
    repeated: true,
    type:
      Google.Ads.Googleads.V7.Enums.CustomerPayPerConversionEligibilityFailureReasonEnum.CustomerPayPerConversionEligibilityFailureReason,
    enum: true

  field :optimization_score, 29, type: :double
  field :optimization_score_weight, 30, type: :double
end

defmodule Google.Ads.Googleads.V7.Resources.CallReportingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :call_reporting_enabled, 10, type: :bool
  field :call_conversion_reporting_enabled, 11, type: :bool
  field :call_conversion_action, 12, type: :string
end

defmodule Google.Ads.Googleads.V7.Resources.ConversionTrackingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :conversion_tracking_id, 3, type: :int64
  field :cross_account_conversion_tracking_id, 4, type: :int64
end

defmodule Google.Ads.Googleads.V7.Resources.RemarketingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :google_global_site_tag, 2, type: :string
end
