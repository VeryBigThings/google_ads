defmodule Google.Ads.Googleads.V8.Resources.CustomerClientLink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          client_customer: Google.Protobuf.StringValue.t() | nil,
          manager_link_id: Google.Protobuf.Int64Value.t() | nil,
          status: Google.Ads.Googleads.V8.Enums.ManagerLinkStatusEnum.ManagerLinkStatus.t(),
          hidden: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct [:resource_name, :client_customer, :manager_link_id, :status, :hidden]

  field :resource_name, 1, type: :string
  field :client_customer, 7, type: Google.Protobuf.StringValue
  field :manager_link_id, 8, type: Google.Protobuf.Int64Value

  field :status, 5,
    type: Google.Ads.Googleads.V8.Enums.ManagerLinkStatusEnum.ManagerLinkStatus,
    enum: true

  field :hidden, 9, type: Google.Protobuf.BoolValue
end
