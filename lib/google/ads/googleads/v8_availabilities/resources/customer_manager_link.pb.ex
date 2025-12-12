defmodule Google.Ads.Googleads.V8Availabilities.Resources.CustomerManagerLink do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :manager_customer, 6, type: :string
  field :manager_link_id, 7, type: :int64

  field :status, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ManagerLinkStatusEnum.ManagerLinkStatus,
    enum: true
end
