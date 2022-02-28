defmodule Google.Ads.Googleads.V10.Resources.CustomerClient do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          client_customer: String.t(),
          hidden: boolean,
          level: integer,
          time_zone: String.t(),
          test_account: boolean,
          manager: boolean,
          descriptive_name: String.t(),
          currency_code: String.t(),
          id: integer,
          applied_labels: [String.t()],
          status: Google.Ads.Googleads.V10.Enums.CustomerStatusEnum.CustomerStatus.t()
        }

  defstruct resource_name: "",
            client_customer: "",
            hidden: false,
            level: 0,
            time_zone: "",
            test_account: false,
            manager: false,
            descriptive_name: "",
            currency_code: "",
            id: 0,
            applied_labels: [],
            status: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :client_customer, 12, type: :string, json_name: "clientCustomer", deprecated: false
  field :hidden, 13, type: :bool, deprecated: false
  field :level, 14, type: :int64, deprecated: false
  field :time_zone, 15, type: :string, json_name: "timeZone", deprecated: false
  field :test_account, 16, type: :bool, json_name: "testAccount", deprecated: false
  field :manager, 17, type: :bool, deprecated: false
  field :descriptive_name, 18, type: :string, json_name: "descriptiveName", deprecated: false
  field :currency_code, 19, type: :string, json_name: "currencyCode", deprecated: false
  field :id, 20, type: :int64, deprecated: false

  field :applied_labels, 21,
    repeated: true,
    type: :string,
    json_name: "appliedLabels",
    deprecated: false

  field :status, 22,
    type: Google.Ads.Googleads.V10.Enums.CustomerStatusEnum.CustomerStatus,
    enum: true,
    deprecated: false
end
