defmodule Google.Ads.Googleads.V8Availabilities.Common.PolicyViolationKey do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :policy_name, 3, type: :string
  field :violating_text, 4, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.PolicyValidationParameter do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :ignorable_policy_topics, 3, repeated: true, type: :string

  field :exempt_policy_violation_keys, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Common.PolicyViolationKey
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :topic, 5, type: :string

  field :type, 2,
    type: Google.Ads.Googleads.V8Availabilities.Enums.PolicyTopicEntryTypeEnum.PolicyTopicEntryType,
    enum: true

  field :evidences, 3, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicEvidence

  field :constraints, 4,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicConstraint
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicEvidence.TextList do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :texts, 2, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicEvidence.WebsiteList do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :websites, 2, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicEvidence.DestinationTextList do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :destination_texts, 2, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicEvidence.DestinationMismatch do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :url_types, 1,
    repeated: true,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.PolicyTopicEvidenceDestinationMismatchUrlTypeEnum.PolicyTopicEvidenceDestinationMismatchUrlType,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicEvidence.DestinationNotWorking do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :reason, 0

  field :expanded_url, 7, type: :string

  field :device, 4,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.PolicyTopicEvidenceDestinationNotWorkingDeviceEnum.PolicyTopicEvidenceDestinationNotWorkingDevice,
    enum: true

  field :last_checked_date_time, 8, type: :string

  field :dns_error_type, 1,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.PolicyTopicEvidenceDestinationNotWorkingDnsErrorTypeEnum.PolicyTopicEvidenceDestinationNotWorkingDnsErrorType,
    enum: true,
    oneof: 0

  field :http_error_code, 6, type: :int64, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicEvidence do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :value, 0

  field :website_list, 3,
    type: Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicEvidence.WebsiteList,
    oneof: 0

  field :text_list, 4, type: Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicEvidence.TextList, oneof: 0
  field :language_code, 9, type: :string, oneof: 0

  field :destination_text_list, 6,
    type: Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicEvidence.DestinationTextList,
    oneof: 0

  field :destination_mismatch, 7,
    type: Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicEvidence.DestinationMismatch,
    oneof: 0

  field :destination_not_working, 8,
    type: Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicEvidence.DestinationNotWorking,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicConstraint.CountryConstraintList do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :total_targeted_countries, 3, type: :int32

  field :countries, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicConstraint.CountryConstraint
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicConstraint.ResellerConstraint do
  @moduledoc false
  use Protobuf, syntax: :proto3

end

defmodule Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicConstraint.CountryConstraint do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :country_criterion, 2, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicConstraint do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :value, 0

  field :country_constraint_list, 1,
    type: Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicConstraint.CountryConstraintList,
    oneof: 0

  field :reseller_constraint, 2,
    type: Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicConstraint.ResellerConstraint,
    oneof: 0

  field :certificate_missing_in_country_list, 3,
    type: Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicConstraint.CountryConstraintList,
    oneof: 0

  field :certificate_domain_mismatch_in_country_list, 4,
    type: Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicConstraint.CountryConstraintList,
    oneof: 0
end
