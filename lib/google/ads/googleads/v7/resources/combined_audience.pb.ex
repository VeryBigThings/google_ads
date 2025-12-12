defmodule Google.Ads.Googleads.V7.Resources.CombinedAudience do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :id, 2, type: :int64

  field :status, 3,
    type: Google.Ads.Googleads.V7.Enums.CombinedAudienceStatusEnum.CombinedAudienceStatus,
    enum: true

  field :name, 4, type: :string
  field :description, 5, type: :string
end
