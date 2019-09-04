defmodule Google.Ads.Googleads.V2.Enums.AccessRoleEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.AccessRoleEnum.AccessRole do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:ADMIN, 2)
  field(:STANDARD, 3)
  field(:READ_ONLY, 4)
end
