defmodule Google.Ads.Googleads.V2.Enums.ParentalStatusTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.ParentalStatusTypeEnum.ParentalStatusType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:PARENT, 300)
  field(:NOT_A_PARENT, 301)
  field(:UNDETERMINED, 302)
end
