defmodule Google.Ads.Googleads.V11.Resources.OfflineUserDataJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata:
            {:customer_match_user_list_metadata,
             Google.Ads.Googleads.V11.Common.CustomerMatchUserListMetadata.t() | nil}
            | {:store_sales_metadata,
               Google.Ads.Googleads.V11.Common.StoreSalesMetadata.t() | nil},
          resource_name: String.t(),
          id: integer,
          external_id: integer,
          type:
            Google.Ads.Googleads.V11.Enums.OfflineUserDataJobTypeEnum.OfflineUserDataJobType.t(),
          status:
            Google.Ads.Googleads.V11.Enums.OfflineUserDataJobStatusEnum.OfflineUserDataJobStatus.t(),
          failure_reason:
            Google.Ads.Googleads.V11.Enums.OfflineUserDataJobFailureReasonEnum.OfflineUserDataJobFailureReason.t(),
          operation_metadata:
            Google.Ads.Googleads.V11.Resources.OfflineUserDataJobMetadata.t() | nil
        }

  defstruct metadata: nil,
            resource_name: "",
            id: 0,
            external_id: 0,
            type: :UNSPECIFIED,
            status: :UNSPECIFIED,
            failure_reason: :UNSPECIFIED,
            operation_metadata: nil

  oneof :metadata, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 9, type: :int64, deprecated: false
  field :external_id, 10, type: :int64, json_name: "externalId", deprecated: false

  field :type, 4,
    type: Google.Ads.Googleads.V11.Enums.OfflineUserDataJobTypeEnum.OfflineUserDataJobType,
    enum: true,
    deprecated: false

  field :status, 5,
    type: Google.Ads.Googleads.V11.Enums.OfflineUserDataJobStatusEnum.OfflineUserDataJobStatus,
    enum: true,
    deprecated: false

  field :failure_reason, 6,
    type:
      Google.Ads.Googleads.V11.Enums.OfflineUserDataJobFailureReasonEnum.OfflineUserDataJobFailureReason,
    json_name: "failureReason",
    enum: true,
    deprecated: false

  field :operation_metadata, 11,
    type: Google.Ads.Googleads.V11.Resources.OfflineUserDataJobMetadata,
    json_name: "operationMetadata",
    deprecated: false

  field :customer_match_user_list_metadata, 7,
    type: Google.Ads.Googleads.V11.Common.CustomerMatchUserListMetadata,
    json_name: "customerMatchUserListMetadata",
    oneof: 0,
    deprecated: false

  field :store_sales_metadata, 8,
    type: Google.Ads.Googleads.V11.Common.StoreSalesMetadata,
    json_name: "storeSalesMetadata",
    oneof: 0,
    deprecated: false
end
defmodule Google.Ads.Googleads.V11.Resources.OfflineUserDataJobMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          match_rate_range:
            Google.Ads.Googleads.V11.Enums.OfflineUserDataJobMatchRateRangeEnum.OfflineUserDataJobMatchRateRange.t()
        }

  defstruct match_rate_range: :UNSPECIFIED

  field :match_rate_range, 1,
    type:
      Google.Ads.Googleads.V11.Enums.OfflineUserDataJobMatchRateRangeEnum.OfflineUserDataJobMatchRateRange,
    json_name: "matchRateRange",
    enum: true,
    deprecated: false
end
