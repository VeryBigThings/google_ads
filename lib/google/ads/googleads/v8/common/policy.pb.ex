defmodule Google.Ads.Googleads.V8.Common.PolicyViolationKey do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          policy_name: String.t(),
          violating_text: String.t()
        }

  defstruct [:policy_name, :violating_text]

  field :policy_name, 3, optional: true, type: :string
  field :violating_text, 4, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.PolicyValidationParameter do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          ignorable_policy_topics: [String.t()],
          exempt_policy_violation_keys: [Google.Ads.Googleads.V8.Common.PolicyViolationKey.t()]
        }

  defstruct [:ignorable_policy_topics, :exempt_policy_violation_keys]

  field :ignorable_policy_topics, 3, repeated: true, type: :string

  field :exempt_policy_violation_keys, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.PolicyViolationKey
end

defmodule Google.Ads.Googleads.V8.Common.PolicyTopicEntry do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          topic: String.t(),
          type: Google.Ads.Googleads.V8.Enums.PolicyTopicEntryTypeEnum.PolicyTopicEntryType.t(),
          evidences: [Google.Ads.Googleads.V8.Common.PolicyTopicEvidence.t()],
          constraints: [Google.Ads.Googleads.V8.Common.PolicyTopicConstraint.t()]
        }

  defstruct [:topic, :type, :evidences, :constraints]

  field :topic, 5, optional: true, type: :string

  field :type, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.PolicyTopicEntryTypeEnum.PolicyTopicEntryType,
    enum: true

  field :evidences, 3, repeated: true, type: Google.Ads.Googleads.V8.Common.PolicyTopicEvidence

  field :constraints, 4,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.PolicyTopicConstraint
end

defmodule Google.Ads.Googleads.V8.Common.PolicyTopicEvidence.TextList do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          texts: [String.t()]
        }

  defstruct [:texts]

  field :texts, 2, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.PolicyTopicEvidence.WebsiteList do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          websites: [String.t()]
        }

  defstruct [:websites]

  field :websites, 2, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.PolicyTopicEvidence.DestinationTextList do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          destination_texts: [String.t()]
        }

  defstruct [:destination_texts]

  field :destination_texts, 2, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.PolicyTopicEvidence.DestinationMismatch do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          url_types: [
            [
              Google.Ads.Googleads.V8.Enums.PolicyTopicEvidenceDestinationMismatchUrlTypeEnum.PolicyTopicEvidenceDestinationMismatchUrlType.t()
            ]
          ]
        }

  defstruct [:url_types]

  field :url_types, 1,
    repeated: true,
    type:
      Google.Ads.Googleads.V8.Enums.PolicyTopicEvidenceDestinationMismatchUrlTypeEnum.PolicyTopicEvidenceDestinationMismatchUrlType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Common.PolicyTopicEvidence.DestinationNotWorking do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          reason: {atom, any},
          expanded_url: String.t(),
          device:
            Google.Ads.Googleads.V8.Enums.PolicyTopicEvidenceDestinationNotWorkingDeviceEnum.PolicyTopicEvidenceDestinationNotWorkingDevice.t(),
          last_checked_date_time: String.t()
        }

  defstruct [:reason, :expanded_url, :device, :last_checked_date_time]

  oneof :reason, 0
  field :expanded_url, 7, optional: true, type: :string

  field :device, 4,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.PolicyTopicEvidenceDestinationNotWorkingDeviceEnum.PolicyTopicEvidenceDestinationNotWorkingDevice,
    enum: true

  field :last_checked_date_time, 8, optional: true, type: :string

  field :dns_error_type, 1,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.PolicyTopicEvidenceDestinationNotWorkingDnsErrorTypeEnum.PolicyTopicEvidenceDestinationNotWorkingDnsErrorType,
    enum: true,
    oneof: 0

  field :http_error_code, 6, optional: true, type: :int64, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Common.PolicyTopicEvidence do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          value: {atom, any}
        }

  defstruct [:value]

  oneof :value, 0

  field :website_list, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.PolicyTopicEvidence.WebsiteList,
    oneof: 0

  field :text_list, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.PolicyTopicEvidence.TextList,
    oneof: 0

  field :language_code, 9, optional: true, type: :string, oneof: 0

  field :destination_text_list, 6,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.PolicyTopicEvidence.DestinationTextList,
    oneof: 0

  field :destination_mismatch, 7,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.PolicyTopicEvidence.DestinationMismatch,
    oneof: 0

  field :destination_not_working, 8,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.PolicyTopicEvidence.DestinationNotWorking,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8.Common.PolicyTopicConstraint.CountryConstraintList do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          total_targeted_countries: integer,
          countries: [Google.Ads.Googleads.V8.Common.PolicyTopicConstraint.CountryConstraint.t()]
        }

  defstruct [:total_targeted_countries, :countries]

  field :total_targeted_countries, 3, optional: true, type: :int32

  field :countries, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.PolicyTopicConstraint.CountryConstraint
end

defmodule Google.Ads.Googleads.V8.Common.PolicyTopicConstraint.ResellerConstraint do
  @moduledoc false
  use Protobuf, syntax: :proto2
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Ads.Googleads.V8.Common.PolicyTopicConstraint.CountryConstraint do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          country_criterion: String.t()
        }

  defstruct [:country_criterion]

  field :country_criterion, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.PolicyTopicConstraint do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          value: {atom, any}
        }

  defstruct [:value]

  oneof :value, 0

  field :country_constraint_list, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.PolicyTopicConstraint.CountryConstraintList,
    oneof: 0

  field :reseller_constraint, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.PolicyTopicConstraint.ResellerConstraint,
    oneof: 0

  field :certificate_missing_in_country_list, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.PolicyTopicConstraint.CountryConstraintList,
    oneof: 0

  field :certificate_domain_mismatch_in_country_list, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.PolicyTopicConstraint.CountryConstraintList,
    oneof: 0
end
