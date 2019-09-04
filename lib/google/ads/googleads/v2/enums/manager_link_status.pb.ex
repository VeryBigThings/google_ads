defmodule Google.Ads.Googleads.V2.Enums.ManagerLinkStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.ManagerLinkStatusEnum.ManagerLinkStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:ACTIVE, 2)
  field(:INACTIVE, 3)
  field(:PENDING, 4)
  field(:REFUSED, 5)
  field(:CANCELED, 6)
end
