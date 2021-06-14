defmodule Google.Ads.Googleads.V8.Enums.KeywordPlanKeywordAnnotationEnum.KeywordPlanKeywordAnnotation do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto2
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :KEYWORD_CONCEPT

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :KEYWORD_CONCEPT, 2
end

defmodule Google.Ads.Googleads.V8.Enums.KeywordPlanKeywordAnnotationEnum do
  @moduledoc false
  use Protobuf, syntax: :proto2
  @type t :: %__MODULE__{}

  defstruct []
end
