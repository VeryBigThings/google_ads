defmodule Google.Ads.Googleads.V11.Resources.CustomerClientLink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          client_customer: String.t(),
          manager_link_id: integer,
          status: Google.Ads.Googleads.V11.Enums.ManagerLinkStatusEnum.ManagerLinkStatus.t(),
          hidden: boolean
        }

  defstruct resource_name: "",
            client_customer: "",
            manager_link_id: 0,
            status: :UNSPECIFIED,
            hidden: false

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :client_customer, 7, type: :string, json_name: "clientCustomer", deprecated: false
  field :manager_link_id, 8, type: :int64, json_name: "managerLinkId", deprecated: false

  field :status, 5,
    type: Google.Ads.Googleads.V11.Enums.ManagerLinkStatusEnum.ManagerLinkStatus,
    enum: true

  field :hidden, 9, type: :bool
end
