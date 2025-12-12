defmodule Google.Ads.Googleads.V8.Services.GetKeywordThemeConstantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.SuggestKeywordThemeConstantsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :query_text, 1, optional: true, type: :string
  field :country_code, 2, optional: true, type: :string
  field :language_code, 3, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.SuggestKeywordThemeConstantsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :keyword_theme_constants, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Resources.KeywordThemeConstant
end

defmodule Google.Ads.Googleads.V8.Services.KeywordThemeConstantService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.KeywordThemeConstantService"

  rpc :GetKeywordThemeConstant,
      Google.Ads.Googleads.V8.Services.GetKeywordThemeConstantRequest,
      Google.Ads.Googleads.V8.Resources.KeywordThemeConstant

  rpc :SuggestKeywordThemeConstants,
      Google.Ads.Googleads.V8.Services.SuggestKeywordThemeConstantsRequest,
      Google.Ads.Googleads.V8.Services.SuggestKeywordThemeConstantsResponse
end

defmodule Google.Ads.Googleads.V8.Services.KeywordThemeConstantService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.KeywordThemeConstantService.Service
end
