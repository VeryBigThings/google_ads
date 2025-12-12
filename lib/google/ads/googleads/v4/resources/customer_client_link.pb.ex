defmodule Google.Ads.Googleads.V4.Resources.CustomerClientLink do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :client_customer, 3, type: Google.Protobuf.StringValue
  field :manager_link_id, 4, type: Google.Protobuf.Int64Value

  field :status, 5,
    type: Google.Ads.Googleads.V4.Enums.ManagerLinkStatusEnum.ManagerLinkStatus,
    enum: true

  field :hidden, 6, type: Google.Protobuf.BoolValue
end
