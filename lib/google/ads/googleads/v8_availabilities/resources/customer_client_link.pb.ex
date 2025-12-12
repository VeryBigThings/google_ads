defmodule Google.Ads.Googleads.V8Availabilities.Resources.CustomerClientLink do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :client_customer, 7, type: :string
  field :manager_link_id, 8, type: :int64

  field :status, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ManagerLinkStatusEnum.ManagerLinkStatus,
    enum: true

  field :hidden, 9, type: :bool
end
