defmodule Google.Ads.Googleads.V2.Errors.KeywordPlanKeywordErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.KeywordPlanKeywordErrorEnum.KeywordPlanKeywordError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:INVALID_KEYWORD_MATCH_TYPE, 2)
  field(:DUPLICATE_KEYWORD, 3)
  field(:KEYWORD_TEXT_TOO_LONG, 4)
  field(:KEYWORD_HAS_INVALID_CHARS, 5)
  field(:KEYWORD_HAS_TOO_MANY_WORDS, 6)
  field(:INVALID_KEYWORD_TEXT, 7)
end
