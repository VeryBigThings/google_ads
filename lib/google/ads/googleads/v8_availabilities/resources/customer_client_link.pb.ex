defmodule Google.Ads.Googleads.V8.Resources.CustomerClientLink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          client_customer: String.t(),
          manager_link_id: integer,
          status: Google.Ads.Googleads.V8.Enums.ManagerLinkStatusEnum.ManagerLinkStatus.t(),
          hidden: boolean
        }

  defstruct [:resource_name, :client_customer, :manager_link_id, :status, :hidden]

  field :resource_name, 1, type: :string
  field :client_customer, 7, type: :string
  field :manager_link_id, 8, type: :int64

  field :status, 5,
    type: Google.Ads.Googleads.V8.Enums.ManagerLinkStatusEnum.ManagerLinkStatus,
    enum: true

  field :hidden, 9, type: :bool
end
