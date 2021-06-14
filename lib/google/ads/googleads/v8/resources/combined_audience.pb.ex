defmodule Google.Ads.Googleads.V8.Resources.CombinedAudience do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          status:
            Google.Ads.Googleads.V8.Enums.CombinedAudienceStatusEnum.CombinedAudienceStatus.t(),
          name: String.t(),
          description: String.t()
        }

  defstruct [:resource_name, :id, :status, :name, :description]

  field :resource_name, 1, optional: true, type: :string
  field :id, 2, optional: true, type: :int64

  field :status, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.CombinedAudienceStatusEnum.CombinedAudienceStatus,
    enum: true

  field :name, 4, optional: true, type: :string
  field :description, 5, optional: true, type: :string
end
