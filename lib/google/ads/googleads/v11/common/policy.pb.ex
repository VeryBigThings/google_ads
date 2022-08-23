defmodule Google.Ads.Googleads.V11.Common.PolicyViolationKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy_name: String.t(),
          violating_text: String.t()
        }

  defstruct policy_name: "",
            violating_text: ""

  field :policy_name, 3, type: :string, json_name: "policyName"
  field :violating_text, 4, type: :string, json_name: "violatingText"
end
defmodule Google.Ads.Googleads.V11.Common.PolicyValidationParameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ignorable_policy_topics: [String.t()],
          exempt_policy_violation_keys: [Google.Ads.Googleads.V11.Common.PolicyViolationKey.t()]
        }

  defstruct ignorable_policy_topics: [],
            exempt_policy_violation_keys: []

  field :ignorable_policy_topics, 3,
    repeated: true,
    type: :string,
    json_name: "ignorablePolicyTopics"

  field :exempt_policy_violation_keys, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.PolicyViolationKey,
    json_name: "exemptPolicyViolationKeys"
end
defmodule Google.Ads.Googleads.V11.Common.PolicyTopicEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t(),
          type: Google.Ads.Googleads.V11.Enums.PolicyTopicEntryTypeEnum.PolicyTopicEntryType.t(),
          evidences: [Google.Ads.Googleads.V11.Common.PolicyTopicEvidence.t()],
          constraints: [Google.Ads.Googleads.V11.Common.PolicyTopicConstraint.t()]
        }

  defstruct topic: "",
            type: :UNSPECIFIED,
            evidences: [],
            constraints: []

  field :topic, 5, type: :string

  field :type, 2,
    type: Google.Ads.Googleads.V11.Enums.PolicyTopicEntryTypeEnum.PolicyTopicEntryType,
    enum: true

  field :evidences, 3, repeated: true, type: Google.Ads.Googleads.V11.Common.PolicyTopicEvidence

  field :constraints, 4,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.PolicyTopicConstraint
end
defmodule Google.Ads.Googleads.V11.Common.PolicyTopicEvidence.TextList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          texts: [String.t()]
        }

  defstruct texts: []

  field :texts, 2, repeated: true, type: :string
end
defmodule Google.Ads.Googleads.V11.Common.PolicyTopicEvidence.WebsiteList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          websites: [String.t()]
        }

  defstruct websites: []

  field :websites, 2, repeated: true, type: :string
end
defmodule Google.Ads.Googleads.V11.Common.PolicyTopicEvidence.DestinationTextList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination_texts: [String.t()]
        }

  defstruct destination_texts: []

  field :destination_texts, 2, repeated: true, type: :string, json_name: "destinationTexts"
end
defmodule Google.Ads.Googleads.V11.Common.PolicyTopicEvidence.DestinationMismatch do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url_types: [
            Google.Ads.Googleads.V11.Enums.PolicyTopicEvidenceDestinationMismatchUrlTypeEnum.PolicyTopicEvidenceDestinationMismatchUrlType.t()
          ]
        }

  defstruct url_types: []

  field :url_types, 1,
    repeated: true,
    type:
      Google.Ads.Googleads.V11.Enums.PolicyTopicEvidenceDestinationMismatchUrlTypeEnum.PolicyTopicEvidenceDestinationMismatchUrlType,
    json_name: "urlTypes",
    enum: true
end
defmodule Google.Ads.Googleads.V11.Common.PolicyTopicEvidence.DestinationNotWorking do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reason:
            {:dns_error_type,
             Google.Ads.Googleads.V11.Enums.PolicyTopicEvidenceDestinationNotWorkingDnsErrorTypeEnum.PolicyTopicEvidenceDestinationNotWorkingDnsErrorType.t()}
            | {:http_error_code, integer},
          expanded_url: String.t(),
          device:
            Google.Ads.Googleads.V11.Enums.PolicyTopicEvidenceDestinationNotWorkingDeviceEnum.PolicyTopicEvidenceDestinationNotWorkingDevice.t(),
          last_checked_date_time: String.t()
        }

  defstruct reason: nil,
            expanded_url: "",
            device: :UNSPECIFIED,
            last_checked_date_time: ""

  oneof :reason, 0

  field :expanded_url, 7, type: :string, json_name: "expandedUrl"

  field :device, 4,
    type:
      Google.Ads.Googleads.V11.Enums.PolicyTopicEvidenceDestinationNotWorkingDeviceEnum.PolicyTopicEvidenceDestinationNotWorkingDevice,
    enum: true

  field :last_checked_date_time, 8, type: :string, json_name: "lastCheckedDateTime"

  field :dns_error_type, 1,
    type:
      Google.Ads.Googleads.V11.Enums.PolicyTopicEvidenceDestinationNotWorkingDnsErrorTypeEnum.PolicyTopicEvidenceDestinationNotWorkingDnsErrorType,
    json_name: "dnsErrorType",
    enum: true,
    oneof: 0

  field :http_error_code, 6, type: :int64, json_name: "httpErrorCode", oneof: 0
end
defmodule Google.Ads.Googleads.V11.Common.PolicyTopicEvidence do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value:
            {:website_list,
             Google.Ads.Googleads.V11.Common.PolicyTopicEvidence.WebsiteList.t() | nil}
            | {:text_list, Google.Ads.Googleads.V11.Common.PolicyTopicEvidence.TextList.t() | nil}
            | {:language_code, String.t()}
            | {:destination_text_list,
               Google.Ads.Googleads.V11.Common.PolicyTopicEvidence.DestinationTextList.t() | nil}
            | {:destination_mismatch,
               Google.Ads.Googleads.V11.Common.PolicyTopicEvidence.DestinationMismatch.t() | nil}
            | {:destination_not_working,
               Google.Ads.Googleads.V11.Common.PolicyTopicEvidence.DestinationNotWorking.t() | nil}
        }

  defstruct value: nil

  oneof :value, 0

  field :website_list, 3,
    type: Google.Ads.Googleads.V11.Common.PolicyTopicEvidence.WebsiteList,
    json_name: "websiteList",
    oneof: 0

  field :text_list, 4,
    type: Google.Ads.Googleads.V11.Common.PolicyTopicEvidence.TextList,
    json_name: "textList",
    oneof: 0

  field :language_code, 9, type: :string, json_name: "languageCode", oneof: 0

  field :destination_text_list, 6,
    type: Google.Ads.Googleads.V11.Common.PolicyTopicEvidence.DestinationTextList,
    json_name: "destinationTextList",
    oneof: 0

  field :destination_mismatch, 7,
    type: Google.Ads.Googleads.V11.Common.PolicyTopicEvidence.DestinationMismatch,
    json_name: "destinationMismatch",
    oneof: 0

  field :destination_not_working, 8,
    type: Google.Ads.Googleads.V11.Common.PolicyTopicEvidence.DestinationNotWorking,
    json_name: "destinationNotWorking",
    oneof: 0
end
defmodule Google.Ads.Googleads.V11.Common.PolicyTopicConstraint.CountryConstraintList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          total_targeted_countries: integer,
          countries: [Google.Ads.Googleads.V11.Common.PolicyTopicConstraint.CountryConstraint.t()]
        }

  defstruct total_targeted_countries: 0,
            countries: []

  field :total_targeted_countries, 3, type: :int32, json_name: "totalTargetedCountries"

  field :countries, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.PolicyTopicConstraint.CountryConstraint
end
defmodule Google.Ads.Googleads.V11.Common.PolicyTopicConstraint.ResellerConstraint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Ads.Googleads.V11.Common.PolicyTopicConstraint.CountryConstraint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          country_criterion: String.t()
        }

  defstruct country_criterion: ""

  field :country_criterion, 2, type: :string, json_name: "countryCriterion"
end
defmodule Google.Ads.Googleads.V11.Common.PolicyTopicConstraint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value:
            {:country_constraint_list,
             Google.Ads.Googleads.V11.Common.PolicyTopicConstraint.CountryConstraintList.t() | nil}
            | {:reseller_constraint,
               Google.Ads.Googleads.V11.Common.PolicyTopicConstraint.ResellerConstraint.t() | nil}
            | {:certificate_missing_in_country_list,
               Google.Ads.Googleads.V11.Common.PolicyTopicConstraint.CountryConstraintList.t()
               | nil}
            | {:certificate_domain_mismatch_in_country_list,
               Google.Ads.Googleads.V11.Common.PolicyTopicConstraint.CountryConstraintList.t()
               | nil}
        }

  defstruct value: nil

  oneof :value, 0

  field :country_constraint_list, 1,
    type: Google.Ads.Googleads.V11.Common.PolicyTopicConstraint.CountryConstraintList,
    json_name: "countryConstraintList",
    oneof: 0

  field :reseller_constraint, 2,
    type: Google.Ads.Googleads.V11.Common.PolicyTopicConstraint.ResellerConstraint,
    json_name: "resellerConstraint",
    oneof: 0

  field :certificate_missing_in_country_list, 3,
    type: Google.Ads.Googleads.V11.Common.PolicyTopicConstraint.CountryConstraintList,
    json_name: "certificateMissingInCountryList",
    oneof: 0

  field :certificate_domain_mismatch_in_country_list, 4,
    type: Google.Ads.Googleads.V11.Common.PolicyTopicConstraint.CountryConstraintList,
    json_name: "certificateDomainMismatchInCountryList",
    oneof: 0
end
