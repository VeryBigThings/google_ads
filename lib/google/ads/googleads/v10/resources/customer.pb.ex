defmodule Google.Ads.Googleads.V10.Resources.Customer do
  @moduledoc false
  use Protobuf, syntax: :proto3

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
            Google.Ads.Googleads.V10.Resources.CallReportingSetting.t() | nil,
          conversion_tracking_setting:
            Google.Ads.Googleads.V10.Resources.ConversionTrackingSetting.t() | nil,
          remarketing_setting: Google.Ads.Googleads.V10.Resources.RemarketingSetting.t() | nil,
          pay_per_conversion_eligibility_failure_reasons: [
            Google.Ads.Googleads.V10.Enums.CustomerPayPerConversionEligibilityFailureReasonEnum.CustomerPayPerConversionEligibilityFailureReason.t()
          ],
          optimization_score: float | :infinity | :negative_infinity | :nan,
          optimization_score_weight: float | :infinity | :negative_infinity | :nan,
          status: Google.Ads.Googleads.V10.Enums.CustomerStatusEnum.CustomerStatus.t()
        }

  defstruct resource_name: "",
            id: 0,
            descriptive_name: "",
            currency_code: "",
            time_zone: "",
            tracking_url_template: "",
            final_url_suffix: "",
            auto_tagging_enabled: false,
            has_partners_badge: false,
            manager: false,
            test_account: false,
            call_reporting_setting: nil,
            conversion_tracking_setting: nil,
            remarketing_setting: nil,
            pay_per_conversion_eligibility_failure_reasons: [],
            optimization_score: 0.0,
            optimization_score_weight: 0.0,
            status: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 19, type: :int64, deprecated: false
  field :descriptive_name, 20, type: :string, json_name: "descriptiveName"
  field :currency_code, 21, type: :string, json_name: "currencyCode", deprecated: false
  field :time_zone, 22, type: :string, json_name: "timeZone", deprecated: false
  field :tracking_url_template, 23, type: :string, json_name: "trackingUrlTemplate"
  field :final_url_suffix, 24, type: :string, json_name: "finalUrlSuffix"
  field :auto_tagging_enabled, 25, type: :bool, json_name: "autoTaggingEnabled"
  field :has_partners_badge, 26, type: :bool, json_name: "hasPartnersBadge", deprecated: false
  field :manager, 27, type: :bool, deprecated: false
  field :test_account, 28, type: :bool, json_name: "testAccount", deprecated: false

  field :call_reporting_setting, 10,
    type: Google.Ads.Googleads.V10.Resources.CallReportingSetting,
    json_name: "callReportingSetting"

  field :conversion_tracking_setting, 14,
    type: Google.Ads.Googleads.V10.Resources.ConversionTrackingSetting,
    json_name: "conversionTrackingSetting",
    deprecated: false

  field :remarketing_setting, 15,
    type: Google.Ads.Googleads.V10.Resources.RemarketingSetting,
    json_name: "remarketingSetting",
    deprecated: false

  field :pay_per_conversion_eligibility_failure_reasons, 16,
    repeated: true,
    type:
      Google.Ads.Googleads.V10.Enums.CustomerPayPerConversionEligibilityFailureReasonEnum.CustomerPayPerConversionEligibilityFailureReason,
    json_name: "payPerConversionEligibilityFailureReasons",
    enum: true,
    deprecated: false

  field :optimization_score, 29, type: :double, json_name: "optimizationScore", deprecated: false

  field :optimization_score_weight, 30,
    type: :double,
    json_name: "optimizationScoreWeight",
    deprecated: false

  field :status, 36,
    type: Google.Ads.Googleads.V10.Enums.CustomerStatusEnum.CustomerStatus,
    enum: true,
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.CallReportingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          call_reporting_enabled: boolean,
          call_conversion_reporting_enabled: boolean,
          call_conversion_action: String.t()
        }

  defstruct call_reporting_enabled: false,
            call_conversion_reporting_enabled: false,
            call_conversion_action: ""

  field :call_reporting_enabled, 10, type: :bool, json_name: "callReportingEnabled"

  field :call_conversion_reporting_enabled, 11,
    type: :bool,
    json_name: "callConversionReportingEnabled"

  field :call_conversion_action, 12,
    type: :string,
    json_name: "callConversionAction",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.ConversionTrackingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversion_tracking_id: integer,
          cross_account_conversion_tracking_id: integer,
          accepted_customer_data_terms: boolean,
          conversion_tracking_status:
            Google.Ads.Googleads.V10.Enums.ConversionTrackingStatusEnum.ConversionTrackingStatus.t(),
          enhanced_conversions_for_leads_enabled: boolean
        }

  defstruct conversion_tracking_id: 0,
            cross_account_conversion_tracking_id: 0,
            accepted_customer_data_terms: false,
            conversion_tracking_status: :UNSPECIFIED,
            enhanced_conversions_for_leads_enabled: false

  field :conversion_tracking_id, 3,
    type: :int64,
    json_name: "conversionTrackingId",
    deprecated: false

  field :cross_account_conversion_tracking_id, 4,
    type: :int64,
    json_name: "crossAccountConversionTrackingId",
    deprecated: false

  field :accepted_customer_data_terms, 5,
    type: :bool,
    json_name: "acceptedCustomerDataTerms",
    deprecated: false

  field :conversion_tracking_status, 6,
    type: Google.Ads.Googleads.V10.Enums.ConversionTrackingStatusEnum.ConversionTrackingStatus,
    json_name: "conversionTrackingStatus",
    enum: true,
    deprecated: false

  field :enhanced_conversions_for_leads_enabled, 7,
    type: :bool,
    json_name: "enhancedConversionsForLeadsEnabled",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.RemarketingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          google_global_site_tag: String.t()
        }

  defstruct google_global_site_tag: ""

  field :google_global_site_tag, 2,
    type: :string,
    json_name: "googleGlobalSiteTag",
    deprecated: false
end
