defmodule Google.Ads.Googleads.V7.Resources.OfflineUserDataJob do
  @moduledoc false
  use Protobuf, syntax: :proto3


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
