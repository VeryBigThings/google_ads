defmodule Google.Ads.Googleads.V11.Resources.CustomerManagerLink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          manager_customer: String.t(),
          manager_link_id: integer,
          status: Google.Ads.Googleads.V11.Enums.ManagerLinkStatusEnum.ManagerLinkStatus.t()
        }

  defstruct resource_name: "",
            manager_customer: "",
            manager_link_id: 0,
            status: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :manager_customer, 6, type: :string, json_name: "managerCustomer", deprecated: false
  field :manager_link_id, 7, type: :int64, json_name: "managerLinkId", deprecated: false

  field :status, 5,
    type: Google.Ads.Googleads.V11.Enums.ManagerLinkStatusEnum.ManagerLinkStatus,
    enum: true
end
