defmodule Google.Ads.Googleads.V8.Resources.OfflineUserDataJob do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :metadata, 0
  field :resource_name, 1, optional: true, type: :string
  field :id, 9, optional: true, type: :int64
  field :external_id, 10, optional: true, type: :int64

  field :type, 4,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.OfflineUserDataJobTypeEnum.OfflineUserDataJobType,
    enum: true

  field :status, 5,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.OfflineUserDataJobStatusEnum.OfflineUserDataJobStatus,
    enum: true

  field :failure_reason, 6,
    required: true,
    type:
      Google.Ads.Googleads.V8.Enums.OfflineUserDataJobFailureReasonEnum.OfflineUserDataJobFailureReason,
    enum: true

  field :customer_match_user_list_metadata, 7,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.CustomerMatchUserListMetadata,
    oneof: 0

  field :store_sales_metadata, 8,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.StoreSalesMetadata,
    oneof: 0
end
