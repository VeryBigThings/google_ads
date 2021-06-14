defmodule Google.Ads.Googleads.V8.Enums.PromotionExtensionDiscountModifierEnum.PromotionExtensionDiscountModifier do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto2
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :UP_TO

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :UP_TO, 2
end

defmodule Google.Ads.Googleads.V8.Enums.PromotionExtensionDiscountModifierEnum do
  @moduledoc false
  use Protobuf, syntax: :proto2
  @type t :: %__MODULE__{}

  defstruct []
end
