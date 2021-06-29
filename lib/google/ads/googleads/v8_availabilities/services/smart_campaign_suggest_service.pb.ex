defmodule Google.Ads.Googleads.V8Availabilities.Services.SuggestSmartCampaignBudgetOptionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          suggestion_data: {atom, any},
          customer_id: String.t()
        }

  defstruct [:suggestion_data, :customer_id]

  oneof :suggestion_data, 0

  field :customer_id, 1, type: :string
  field :campaign, 2, type: :string, oneof: 0

  field :suggestion_info, 3,
    type: Google.Ads.Googleads.V8Availabilities.Services.SmartCampaignSuggestionInfo,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SmartCampaignSuggestionInfo.LocationList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          locations: [Google.Ads.Googleads.V8Availabilities.Common.LocationInfo.t()]
        }

  defstruct [:locations]

  field :locations, 1, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Common.LocationInfo
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SmartCampaignSuggestionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          geo_target: {atom, any},
          final_url: String.t(),
          business_location_id: integer,
          language_code: String.t(),
          ad_schedules: [Google.Ads.Googleads.V8Availabilities.Common.AdScheduleInfo.t()],
          keyword_themes: [Google.Ads.Googleads.V8Availabilities.Common.KeywordThemeInfo.t()]
        }

  defstruct [
    :geo_target,
    :final_url,
    :business_location_id,
    :language_code,
    :ad_schedules,
    :keyword_themes
  ]

  oneof :geo_target, 0

  field :final_url, 1, type: :string
  field :business_location_id, 2, type: :int64
  field :language_code, 3, type: :string
  field :ad_schedules, 6, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Common.AdScheduleInfo
  field :keyword_themes, 7, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Common.KeywordThemeInfo

  field :location_list, 4,
    type: Google.Ads.Googleads.V8Availabilities.Services.SmartCampaignSuggestionInfo.LocationList,
    oneof: 0

  field :proximity, 5, type: Google.Ads.Googleads.V8Availabilities.Common.ProximityInfo, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SuggestSmartCampaignBudgetOptionsResponse.Metrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_daily_clicks: integer,
          max_daily_clicks: integer
        }

  defstruct [:min_daily_clicks, :max_daily_clicks]

  field :min_daily_clicks, 1, type: :int64
  field :max_daily_clicks, 2, type: :int64
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SuggestSmartCampaignBudgetOptionsResponse.BudgetOption do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          daily_amount_micros: integer,
          metrics:
            Google.Ads.Googleads.V8Availabilities.Services.SuggestSmartCampaignBudgetOptionsResponse.Metrics.t()
            | nil
        }

  defstruct [:daily_amount_micros, :metrics]

  field :daily_amount_micros, 1, type: :int64

  field :metrics, 2,
    type: Google.Ads.Googleads.V8Availabilities.Services.SuggestSmartCampaignBudgetOptionsResponse.Metrics
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SuggestSmartCampaignBudgetOptionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          low:
            Google.Ads.Googleads.V8Availabilities.Services.SuggestSmartCampaignBudgetOptionsResponse.BudgetOption.t()
            | nil,
          recommended:
            Google.Ads.Googleads.V8Availabilities.Services.SuggestSmartCampaignBudgetOptionsResponse.BudgetOption.t()
            | nil,
          high:
            Google.Ads.Googleads.V8Availabilities.Services.SuggestSmartCampaignBudgetOptionsResponse.BudgetOption.t()
            | nil
        }

  defstruct [:low, :recommended, :high]

  field :low, 1,
    type: Google.Ads.Googleads.V8Availabilities.Services.SuggestSmartCampaignBudgetOptionsResponse.BudgetOption

  field :recommended, 2,
    type: Google.Ads.Googleads.V8Availabilities.Services.SuggestSmartCampaignBudgetOptionsResponse.BudgetOption

  field :high, 3,
    type: Google.Ads.Googleads.V8Availabilities.Services.SuggestSmartCampaignBudgetOptionsResponse.BudgetOption
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SmartCampaignSuggestService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.SmartCampaignSuggestService"

  rpc :SuggestSmartCampaignBudgetOptions,
      Google.Ads.Googleads.V8Availabilities.Services.SuggestSmartCampaignBudgetOptionsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.SuggestSmartCampaignBudgetOptionsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SmartCampaignSuggestService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.SmartCampaignSuggestService.Service
end
