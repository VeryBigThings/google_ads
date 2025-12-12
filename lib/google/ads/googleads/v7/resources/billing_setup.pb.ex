defmodule Google.Ads.Googleads.V7.Resources.BillingSetup.PaymentsAccountInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :payments_account_id, 6, type: :string
  field :payments_account_name, 7, type: :string
  field :payments_profile_id, 8, type: :string
  field :payments_profile_name, 9, type: :string
  field :secondary_payments_profile_id, 10, type: :string
end

defmodule Google.Ads.Googleads.V7.Resources.BillingSetup do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :start_time, 0
  oneof :end_time, 1

  field :resource_name, 1, type: :string
  field :id, 15, type: :int64

  field :status, 3,
    type: Google.Ads.Googleads.V7.Enums.BillingSetupStatusEnum.BillingSetupStatus,
    enum: true

  field :payments_account, 18, type: :string

  field :payments_account_info, 12,
    type: Google.Ads.Googleads.V7.Resources.BillingSetup.PaymentsAccountInfo

  field :start_date_time, 16, type: :string, oneof: 0

  field :start_time_type, 10,
    type: Google.Ads.Googleads.V7.Enums.TimeTypeEnum.TimeType,
    enum: true,
    oneof: 0

  field :end_date_time, 17, type: :string, oneof: 1

  field :end_time_type, 14,
    type: Google.Ads.Googleads.V7.Enums.TimeTypeEnum.TimeType,
    enum: true,
    oneof: 1
end
