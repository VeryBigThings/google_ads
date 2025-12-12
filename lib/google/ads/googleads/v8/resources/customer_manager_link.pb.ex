defmodule Google.Ads.Googleads.V8.Resources.CustomerManagerLink do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :manager_customer, 6, optional: true, type: :string
  field :manager_link_id, 7, optional: true, type: :int64

  field :status, 5,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.ManagerLinkStatusEnum.ManagerLinkStatus,
    enum: true
end
