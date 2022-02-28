defmodule Google.Ads.Googleads.V10.Resources.BillingSetup.PaymentsAccountInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payments_account_id: String.t(),
          payments_account_name: String.t(),
          payments_profile_id: String.t(),
          payments_profile_name: String.t(),
          secondary_payments_profile_id: String.t()
        }

  defstruct payments_account_id: "",
            payments_account_name: "",
            payments_profile_id: "",
            payments_profile_name: "",
            secondary_payments_profile_id: ""

  field :payments_account_id, 6, type: :string, json_name: "paymentsAccountId", deprecated: false

  field :payments_account_name, 7,
    type: :string,
    json_name: "paymentsAccountName",
    deprecated: false

  field :payments_profile_id, 8, type: :string, json_name: "paymentsProfileId", deprecated: false

  field :payments_profile_name, 9,
    type: :string,
    json_name: "paymentsProfileName",
    deprecated: false

  field :secondary_payments_profile_id, 10,
    type: :string,
    json_name: "secondaryPaymentsProfileId",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.BillingSetup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time:
            {:start_date_time, String.t()}
            | {:start_time_type, Google.Ads.Googleads.V10.Enums.TimeTypeEnum.TimeType.t()},
          end_time:
            {:end_date_time, String.t()}
            | {:end_time_type, Google.Ads.Googleads.V10.Enums.TimeTypeEnum.TimeType.t()},
          resource_name: String.t(),
          id: integer,
          status: Google.Ads.Googleads.V10.Enums.BillingSetupStatusEnum.BillingSetupStatus.t(),
          payments_account: String.t(),
          payments_account_info:
            Google.Ads.Googleads.V10.Resources.BillingSetup.PaymentsAccountInfo.t() | nil
        }

  defstruct start_time: nil,
            end_time: nil,
            resource_name: "",
            id: 0,
            status: :UNSPECIFIED,
            payments_account: "",
            payments_account_info: nil

  oneof :start_time, 0
  oneof :end_time, 1

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 15, type: :int64, deprecated: false

  field :status, 3,
    type: Google.Ads.Googleads.V10.Enums.BillingSetupStatusEnum.BillingSetupStatus,
    enum: true,
    deprecated: false

  field :payments_account, 18, type: :string, json_name: "paymentsAccount", deprecated: false

  field :payments_account_info, 12,
    type: Google.Ads.Googleads.V10.Resources.BillingSetup.PaymentsAccountInfo,
    json_name: "paymentsAccountInfo",
    deprecated: false

  field :start_date_time, 16,
    type: :string,
    json_name: "startDateTime",
    oneof: 0,
    deprecated: false

  field :start_time_type, 10,
    type: Google.Ads.Googleads.V10.Enums.TimeTypeEnum.TimeType,
    json_name: "startTimeType",
    enum: true,
    oneof: 0,
    deprecated: false

  field :end_date_time, 17, type: :string, json_name: "endDateTime", oneof: 1, deprecated: false

  field :end_time_type, 14,
    type: Google.Ads.Googleads.V10.Enums.TimeTypeEnum.TimeType,
    json_name: "endTimeType",
    enum: true,
    oneof: 1,
    deprecated: false
end
