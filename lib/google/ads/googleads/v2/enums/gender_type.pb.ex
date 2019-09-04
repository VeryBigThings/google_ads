defmodule Google.Ads.Googleads.V2.Enums.GenderTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.GenderTypeEnum.GenderType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:MALE, 10)
  field(:FEMALE, 11)
  field(:UNDETERMINED, 20)
end
