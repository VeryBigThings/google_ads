defmodule Google.Ads.Googleads.V7.Resources.OfflineUserDataJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata: {atom, any},
          resource_name: String.t(),
          id: integer,
          external_id: integer,
          type:
            Google.Ads.Googleads.V7.Enums.OfflineUserDataJobTypeEnum.OfflineUserDataJobType.t(),
          status:
            Google.Ads.Googleads.V7.Enums.OfflineUserDataJobStatusEnum.OfflineUserDataJobStatus.t(),
          failure_reason:
            Google.Ads.Googleads.V7.Enums.OfflineUserDataJobFailureReasonEnum.OfflineUserDataJobFailureReason.t()
        }
  defstruct [:metadata, :resource_name, :id, :external_id, :type, :status, :failure_reason]

  oneof :metadata, 0

  field :resource_name, 1, type: :string
  field :id, 9, type: :int64
  field :external_id, 10, type: :int64

  field :type, 4,
    type: Google.Ads.Googleads.V7.Enums.OfflineUserDataJobTypeEnum.OfflineUserDataJobType,
    enum: true

  field :status, 5,
    type: Google.Ads.Googleads.V7.Enums.OfflineUserDataJobStatusEnum.OfflineUserDataJobStatus,
    enum: true

  field :failure_reason, 6,
    type:
      Google.Ads.Googleads.V7.Enums.OfflineUserDataJobFailureReasonEnum.OfflineUserDataJobFailureReason,
    enum: true

  field :customer_match_user_list_metadata, 7,
    type: Google.Ads.Googleads.V7.Common.CustomerMatchUserListMetadata,
    oneof: 0

  field :store_sales_metadata, 8,
    type: Google.Ads.Googleads.V7.Common.StoreSalesMetadata,
    oneof: 0
end
