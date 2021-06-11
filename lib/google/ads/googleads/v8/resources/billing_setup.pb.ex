defmodule Google.Ads.Googleads.V8.Resources.BillingSetup.PaymentsAccountInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2

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

  field :payments_account_id, 6, optional: true, type: :string
  field :payments_account_name, 7, optional: true, type: :string
  field :payments_profile_id, 8, optional: true, type: :string
  field :payments_profile_name, 9, optional: true, type: :string
  field :secondary_payments_profile_id, 10, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Resources.BillingSetup do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          start_time: {atom, any},
          end_time: {atom, any},
          resource_name: String.t(),
          id: integer,
          status: Google.Ads.Googleads.V8.Enums.BillingSetupStatusEnum.BillingSetupStatus.t(),
          payments_account: String.t(),
          payments_account_info:
            Google.Ads.Googleads.V8.Resources.BillingSetup.PaymentsAccountInfo.t() | nil
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
  field :resource_name, 1, optional: true, type: :string
  field :id, 15, optional: true, type: :int64

  field :status, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.BillingSetupStatusEnum.BillingSetupStatus,
    enum: true

  field :payments_account, 18, optional: true, type: :string

  field :payments_account_info, 12,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.BillingSetup.PaymentsAccountInfo

  field :start_date_time, 16, optional: true, type: :string, oneof: 0

  field :start_time_type, 10,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.TimeTypeEnum.TimeType,
    enum: true,
    oneof: 0

  field :end_date_time, 17, optional: true, type: :string, oneof: 1

  field :end_time_type, 14,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.TimeTypeEnum.TimeType,
    enum: true,
    oneof: 1
end
