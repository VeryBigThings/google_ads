defmodule Google.Ads.Googleads.V2.Enums.CustomInterestMemberTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.CustomInterestMemberTypeEnum.CustomInterestMemberType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:KEYWORD, 2)
  field(:URL, 3)
end
