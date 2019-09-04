defmodule Google.Ads.Googleads.V2.Enums.PromotionExtensionDiscountModifierEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.PromotionExtensionDiscountModifierEnum.PromotionExtensionDiscountModifier do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:UP_TO, 2)
end
