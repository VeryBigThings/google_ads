defmodule Google.Ads.Googleads.V8.Resources.CombinedAudience do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :id, 2, optional: true, type: :int64

  field :status, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.CombinedAudienceStatusEnum.CombinedAudienceStatus,
    enum: true

  field :name, 4, optional: true, type: :string
  field :description, 5, optional: true, type: :string
end
