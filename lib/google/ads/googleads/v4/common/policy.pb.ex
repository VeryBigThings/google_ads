defmodule Google.Ads.Googleads.V4.Common.PolicyViolationKey do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :policy_name, 1, type: Google.Protobuf.StringValue
  field :violating_text, 2, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.PolicyValidationParameter do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :ignorable_policy_topics, 1, repeated: true, type: Google.Protobuf.StringValue

  field :exempt_policy_violation_keys, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.PolicyViolationKey
end

defmodule Google.Ads.Googleads.V4.Common.PolicyTopicEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :topic, 1, type: Google.Protobuf.StringValue

  field :type, 2,
    type: Google.Ads.Googleads.V4.Enums.PolicyTopicEntryTypeEnum.PolicyTopicEntryType,
    enum: true

  field :evidences, 3, repeated: true, type: Google.Ads.Googleads.V4.Common.PolicyTopicEvidence

  field :constraints, 4,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.PolicyTopicConstraint
end

defmodule Google.Ads.Googleads.V4.Common.PolicyTopicEvidence.TextList do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :texts, 1, repeated: true, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.PolicyTopicEvidence.WebsiteList do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :websites, 1, repeated: true, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.PolicyTopicEvidence.DestinationTextList do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :destination_texts, 1, repeated: true, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.PolicyTopicEvidence.DestinationMismatch do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :url_types, 1,
    repeated: true,
    type:
      Google.Ads.Googleads.V4.Enums.PolicyTopicEvidenceDestinationMismatchUrlTypeEnum.PolicyTopicEvidenceDestinationMismatchUrlType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.PolicyTopicEvidence.DestinationNotWorking do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :reason, 0

  field :expanded_url, 3, type: Google.Protobuf.StringValue

  field :device, 4,
    type:
      Google.Ads.Googleads.V4.Enums.PolicyTopicEvidenceDestinationNotWorkingDeviceEnum.PolicyTopicEvidenceDestinationNotWorkingDevice,
    enum: true

  field :last_checked_date_time, 5, type: Google.Protobuf.StringValue

  field :dns_error_type, 1,
    type:
      Google.Ads.Googleads.V4.Enums.PolicyTopicEvidenceDestinationNotWorkingDnsErrorTypeEnum.PolicyTopicEvidenceDestinationNotWorkingDnsErrorType,
    enum: true,
    oneof: 0

  field :http_error_code, 2, type: Google.Protobuf.Int64Value, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Common.PolicyTopicEvidence do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :value, 0

  field :website_list, 3,
    type: Google.Ads.Googleads.V4.Common.PolicyTopicEvidence.WebsiteList,
    oneof: 0

  field :text_list, 4, type: Google.Ads.Googleads.V4.Common.PolicyTopicEvidence.TextList, oneof: 0
  field :language_code, 5, type: Google.Protobuf.StringValue, oneof: 0

  field :destination_text_list, 6,
    type: Google.Ads.Googleads.V4.Common.PolicyTopicEvidence.DestinationTextList,
    oneof: 0

  field :destination_mismatch, 7,
    type: Google.Ads.Googleads.V4.Common.PolicyTopicEvidence.DestinationMismatch,
    oneof: 0

  field :destination_not_working, 8,
    type: Google.Ads.Googleads.V4.Common.PolicyTopicEvidence.DestinationNotWorking,
    oneof: 0
end

defmodule Google.Ads.Googleads.V4.Common.PolicyTopicConstraint.CountryConstraintList do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :total_targeted_countries, 1, type: Google.Protobuf.Int32Value

  field :countries, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.PolicyTopicConstraint.CountryConstraint
end

defmodule Google.Ads.Googleads.V4.Common.PolicyTopicConstraint.ResellerConstraint do
  @moduledoc false
  use Protobuf, syntax: :proto3

end

defmodule Google.Ads.Googleads.V4.Common.PolicyTopicConstraint.CountryConstraint do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :country_criterion, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.PolicyTopicConstraint do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :value, 0

  field :country_constraint_list, 1,
    type: Google.Ads.Googleads.V4.Common.PolicyTopicConstraint.CountryConstraintList,
    oneof: 0

  field :reseller_constraint, 2,
    type: Google.Ads.Googleads.V4.Common.PolicyTopicConstraint.ResellerConstraint,
    oneof: 0

  field :certificate_missing_in_country_list, 3,
    type: Google.Ads.Googleads.V4.Common.PolicyTopicConstraint.CountryConstraintList,
    oneof: 0

  field :certificate_domain_mismatch_in_country_list, 4,
    type: Google.Ads.Googleads.V4.Common.PolicyTopicConstraint.CountryConstraintList,
    oneof: 0
end
