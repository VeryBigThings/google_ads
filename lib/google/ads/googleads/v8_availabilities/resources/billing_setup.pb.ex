defmodule Google.Ads.Googleads.V8Availabilities.Resources.BillingSetup.PaymentsAccountInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payments_account_id: String.t(),
          payments_account_name: String.t(),
          payments_profile_id: String.t(),
          payments_profile_name: String.t(),
          secondary_payments_profile_id: String.t()
        }

  defstruct [
    :payments_account_id,
    :payments_account_name,
    :payments_profile_id,
    :payments_profile_name,
    :secondary_payments_profile_id
  ]

  field :payments_account_id, 6, type: :string
  field :payments_account_name, 7, type: :string
  field :payments_profile_id, 8, type: :string
  field :payments_profile_name, 9, type: :string
  field :secondary_payments_profile_id, 10, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Resources.BillingSetup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: {atom, any},
          end_time: {atom, any},
          resource_name: String.t(),
          id: integer,
          status: Google.Ads.Googleads.V8Availabilities.Enums.BillingSetupStatusEnum.BillingSetupStatus.t(),
          payments_account: String.t(),
          payments_account_info:
            Google.Ads.Googleads.V8Availabilities.Resources.BillingSetup.PaymentsAccountInfo.t() | nil
        }

  defstruct [
    :start_time,
    :end_time,
    :resource_name,
    :id,
    :status,
    :payments_account,
    :payments_account_info
  ]

  oneof :start_time, 0
  oneof :end_time, 1

  field :resource_name, 1, type: :string
  field :id, 15, type: :int64

  field :status, 3,
    type: Google.Ads.Googleads.V8Availabilities.Enums.BillingSetupStatusEnum.BillingSetupStatus,
    enum: true

  field :payments_account, 18, type: :string

  field :payments_account_info, 12,
    type: Google.Ads.Googleads.V8Availabilities.Resources.BillingSetup.PaymentsAccountInfo

  field :start_date_time, 16, type: :string, oneof: 0

  field :start_time_type, 10,
    type: Google.Ads.Googleads.V8Availabilities.Enums.TimeTypeEnum.TimeType,
    enum: true,
    oneof: 0

  field :end_date_time, 17, type: :string, oneof: 1

  field :end_time_type, 14,
    type: Google.Ads.Googleads.V8Availabilities.Enums.TimeTypeEnum.TimeType,
    enum: true,
    oneof: 1
end
