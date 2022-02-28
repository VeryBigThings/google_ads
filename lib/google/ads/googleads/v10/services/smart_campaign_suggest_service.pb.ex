defmodule Google.Ads.Googleads.V10.Services.SuggestSmartCampaignBudgetOptionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          suggestion_data:
            {:campaign, String.t()}
            | {:suggestion_info,
               Google.Ads.Googleads.V10.Services.SmartCampaignSuggestionInfo.t() | nil},
          customer_id: String.t()
        }

  defstruct suggestion_data: nil,
            customer_id: ""

  oneof :suggestion_data, 0

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :campaign, 2, type: :string, oneof: 0, deprecated: false

  field :suggestion_info, 3,
    type: Google.Ads.Googleads.V10.Services.SmartCampaignSuggestionInfo,
    json_name: "suggestionInfo",
    oneof: 0,
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.SmartCampaignSuggestionInfo.LocationList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          locations: [Google.Ads.Googleads.V10.Common.LocationInfo.t()]
        }

  defstruct locations: []

  field :locations, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.LocationInfo,
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.SmartCampaignSuggestionInfo.BusinessContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          business_name: String.t()
        }

  defstruct business_name: ""

  field :business_name, 1, type: :string, json_name: "businessName", deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.SmartCampaignSuggestionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          business_setting:
            {:business_context,
             Google.Ads.Googleads.V10.Services.SmartCampaignSuggestionInfo.BusinessContext.t()
             | nil}
            | {:business_location_id, integer},
          geo_target:
            {:location_list,
             Google.Ads.Googleads.V10.Services.SmartCampaignSuggestionInfo.LocationList.t() | nil}
            | {:proximity, Google.Ads.Googleads.V10.Common.ProximityInfo.t() | nil},
          final_url: String.t(),
          language_code: String.t(),
          ad_schedules: [Google.Ads.Googleads.V10.Common.AdScheduleInfo.t()],
          keyword_themes: [Google.Ads.Googleads.V10.Common.KeywordThemeInfo.t()]
        }

  defstruct business_setting: nil,
            geo_target: nil,
            final_url: "",
            language_code: "",
            ad_schedules: [],
            keyword_themes: []

  oneof :business_setting, 0
  oneof :geo_target, 1

  field :final_url, 1, type: :string, json_name: "finalUrl", deprecated: false
  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false

  field :ad_schedules, 6,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.AdScheduleInfo,
    json_name: "adSchedules",
    deprecated: false

  field :keyword_themes, 7,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.KeywordThemeInfo,
    json_name: "keywordThemes",
    deprecated: false

  field :business_context, 8,
    type: Google.Ads.Googleads.V10.Services.SmartCampaignSuggestionInfo.BusinessContext,
    json_name: "businessContext",
    oneof: 0,
    deprecated: false

  field :business_location_id, 2,
    type: :int64,
    json_name: "businessLocationId",
    oneof: 0,
    deprecated: false

  field :location_list, 4,
    type: Google.Ads.Googleads.V10.Services.SmartCampaignSuggestionInfo.LocationList,
    json_name: "locationList",
    oneof: 1,
    deprecated: false

  field :proximity, 5,
    type: Google.Ads.Googleads.V10.Common.ProximityInfo,
    oneof: 1,
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.SuggestSmartCampaignBudgetOptionsResponse.Metrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_daily_clicks: integer,
          max_daily_clicks: integer
        }

  defstruct min_daily_clicks: 0,
            max_daily_clicks: 0

  field :min_daily_clicks, 1, type: :int64, json_name: "minDailyClicks"
  field :max_daily_clicks, 2, type: :int64, json_name: "maxDailyClicks"
end
defmodule Google.Ads.Googleads.V10.Services.SuggestSmartCampaignBudgetOptionsResponse.BudgetOption do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          daily_amount_micros: integer,
          metrics:
            Google.Ads.Googleads.V10.Services.SuggestSmartCampaignBudgetOptionsResponse.Metrics.t()
            | nil
        }

  defstruct daily_amount_micros: 0,
            metrics: nil

  field :daily_amount_micros, 1, type: :int64, json_name: "dailyAmountMicros"

  field :metrics, 2,
    type: Google.Ads.Googleads.V10.Services.SuggestSmartCampaignBudgetOptionsResponse.Metrics
end
defmodule Google.Ads.Googleads.V10.Services.SuggestSmartCampaignBudgetOptionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          low:
            Google.Ads.Googleads.V10.Services.SuggestSmartCampaignBudgetOptionsResponse.BudgetOption.t()
            | nil,
          recommended:
            Google.Ads.Googleads.V10.Services.SuggestSmartCampaignBudgetOptionsResponse.BudgetOption.t()
            | nil,
          high:
            Google.Ads.Googleads.V10.Services.SuggestSmartCampaignBudgetOptionsResponse.BudgetOption.t()
            | nil
        }

  defstruct low: nil,
            recommended: nil,
            high: nil

  field :low, 1,
    type:
      Google.Ads.Googleads.V10.Services.SuggestSmartCampaignBudgetOptionsResponse.BudgetOption,
    deprecated: false

  field :recommended, 2,
    type:
      Google.Ads.Googleads.V10.Services.SuggestSmartCampaignBudgetOptionsResponse.BudgetOption,
    deprecated: false

  field :high, 3,
    type:
      Google.Ads.Googleads.V10.Services.SuggestSmartCampaignBudgetOptionsResponse.BudgetOption,
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.SuggestSmartCampaignAdRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          suggestion_info: Google.Ads.Googleads.V10.Services.SmartCampaignSuggestionInfo.t() | nil
        }

  defstruct customer_id: "",
            suggestion_info: nil

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :suggestion_info, 2,
    type: Google.Ads.Googleads.V10.Services.SmartCampaignSuggestionInfo,
    json_name: "suggestionInfo",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.SuggestSmartCampaignAdResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad_info: Google.Ads.Googleads.V10.Common.SmartCampaignAdInfo.t() | nil
        }

  defstruct ad_info: nil

  field :ad_info, 1,
    type: Google.Ads.Googleads.V10.Common.SmartCampaignAdInfo,
    json_name: "adInfo",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.SuggestKeywordThemesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          suggestion_info: Google.Ads.Googleads.V10.Services.SmartCampaignSuggestionInfo.t() | nil
        }

  defstruct customer_id: "",
            suggestion_info: nil

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :suggestion_info, 2,
    type: Google.Ads.Googleads.V10.Services.SmartCampaignSuggestionInfo,
    json_name: "suggestionInfo",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.SuggestKeywordThemesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keyword_themes: [Google.Ads.Googleads.V10.Resources.KeywordThemeConstant.t()]
        }

  defstruct keyword_themes: []

  field :keyword_themes, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Resources.KeywordThemeConstant,
    json_name: "keywordThemes"
end
defmodule Google.Ads.Googleads.V10.Services.SmartCampaignSuggestService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v10.services.SmartCampaignSuggestService"

  rpc :SuggestSmartCampaignBudgetOptions,
      Google.Ads.Googleads.V10.Services.SuggestSmartCampaignBudgetOptionsRequest,
      Google.Ads.Googleads.V10.Services.SuggestSmartCampaignBudgetOptionsResponse

  rpc :SuggestSmartCampaignAd,
      Google.Ads.Googleads.V10.Services.SuggestSmartCampaignAdRequest,
      Google.Ads.Googleads.V10.Services.SuggestSmartCampaignAdResponse

  rpc :SuggestKeywordThemes,
      Google.Ads.Googleads.V10.Services.SuggestKeywordThemesRequest,
      Google.Ads.Googleads.V10.Services.SuggestKeywordThemesResponse
end

defmodule Google.Ads.Googleads.V10.Services.SmartCampaignSuggestService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V10.Services.SmartCampaignSuggestService.Service
end
