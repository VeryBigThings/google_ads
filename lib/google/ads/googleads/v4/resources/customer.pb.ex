defmodule Google.Ads.Googleads.V4.Resources.Customer do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :id, 3, type: Google.Protobuf.Int64Value
  field :descriptive_name, 4, type: Google.Protobuf.StringValue
  field :currency_code, 5, type: Google.Protobuf.StringValue
  field :time_zone, 6, type: Google.Protobuf.StringValue
  field :tracking_url_template, 7, type: Google.Protobuf.StringValue
  field :final_url_suffix, 11, type: Google.Protobuf.StringValue
  field :auto_tagging_enabled, 8, type: Google.Protobuf.BoolValue
  field :has_partners_badge, 9, type: Google.Protobuf.BoolValue
  field :manager, 12, type: Google.Protobuf.BoolValue
  field :test_account, 13, type: Google.Protobuf.BoolValue
  field :call_reporting_setting, 10, type: Google.Ads.Googleads.V4.Resources.CallReportingSetting

  field :conversion_tracking_setting, 14,
    type: Google.Ads.Googleads.V4.Resources.ConversionTrackingSetting

  field :remarketing_setting, 15, type: Google.Ads.Googleads.V4.Resources.RemarketingSetting

  field :pay_per_conversion_eligibility_failure_reasons, 16,
    repeated: true,
    type:
      Google.Ads.Googleads.V4.Enums.CustomerPayPerConversionEligibilityFailureReasonEnum.CustomerPayPerConversionEligibilityFailureReason,
    enum: true

  field :optimization_score, 17, type: Google.Protobuf.DoubleValue
end

defmodule Google.Ads.Googleads.V4.Resources.CallReportingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :call_reporting_enabled, 1, type: Google.Protobuf.BoolValue
  field :call_conversion_reporting_enabled, 2, type: Google.Protobuf.BoolValue
  field :call_conversion_action, 9, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Resources.ConversionTrackingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :conversion_tracking_id, 1, type: Google.Protobuf.Int64Value
  field :cross_account_conversion_tracking_id, 2, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Resources.RemarketingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :google_global_site_tag, 1, type: Google.Protobuf.StringValue
end
