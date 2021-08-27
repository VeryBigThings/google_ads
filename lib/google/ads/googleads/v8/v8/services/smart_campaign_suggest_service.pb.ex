defmodule Google.Ads.Googleads.V8.Services.SuggestSmartCampaignBudgetOptionsRequest do
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
    type: Google.Ads.Googleads.V8.Services.SmartCampaignSuggestionInfo,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.SmartCampaignSuggestionInfo.LocationList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          locations: [Google.Ads.Googleads.V8.Common.LocationInfo.t()]
        }
  defstruct [:locations]

  field :locations, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.LocationInfo
end

defmodule Google.Ads.Googleads.V8.Services.SmartCampaignSuggestionInfo.BusinessContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          business_name: String.t()
        }
  defstruct [:business_name]

  field :business_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.SmartCampaignSuggestionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          business_setting: {atom, any},
          geo_target: {atom, any},
          final_url: String.t(),
          language_code: String.t(),
          ad_schedules: [Google.Ads.Googleads.V8.Common.AdScheduleInfo.t()],
          keyword_themes: [Google.Ads.Googleads.V8.Common.KeywordThemeInfo.t()]
        }
  defstruct [
    :business_setting,
    :geo_target,
    :final_url,
    :language_code,
    :ad_schedules,
    :keyword_themes
  ]

  oneof :business_setting, 0
  oneof :geo_target, 1

  field :final_url, 1, type: :string
  field :language_code, 3, type: :string
  field :ad_schedules, 6, repeated: true, type: Google.Ads.Googleads.V8.Common.AdScheduleInfo
  field :keyword_themes, 7, repeated: true, type: Google.Ads.Googleads.V8.Common.KeywordThemeInfo

  field :business_context, 8,
    type: Google.Ads.Googleads.V8.Services.SmartCampaignSuggestionInfo.BusinessContext,
    oneof: 0

  field :business_location_id, 2, type: :int64, oneof: 0

  field :location_list, 4,
    type: Google.Ads.Googleads.V8.Services.SmartCampaignSuggestionInfo.LocationList,
    oneof: 1

  field :proximity, 5, type: Google.Ads.Googleads.V8.Common.ProximityInfo, oneof: 1
end

defmodule Google.Ads.Googleads.V8.Services.SuggestSmartCampaignBudgetOptionsResponse.Metrics do
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

defmodule Google.Ads.Googleads.V8.Services.SuggestSmartCampaignBudgetOptionsResponse.BudgetOption do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          daily_amount_micros: integer,
          metrics:
            Google.Ads.Googleads.V8.Services.SuggestSmartCampaignBudgetOptionsResponse.Metrics.t()
            | nil
        }
  defstruct [:daily_amount_micros, :metrics]

  field :daily_amount_micros, 1, type: :int64

  field :metrics, 2,
    type: Google.Ads.Googleads.V8.Services.SuggestSmartCampaignBudgetOptionsResponse.Metrics
end

defmodule Google.Ads.Googleads.V8.Services.SuggestSmartCampaignBudgetOptionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          low:
            Google.Ads.Googleads.V8.Services.SuggestSmartCampaignBudgetOptionsResponse.BudgetOption.t()
            | nil,
          recommended:
            Google.Ads.Googleads.V8.Services.SuggestSmartCampaignBudgetOptionsResponse.BudgetOption.t()
            | nil,
          high:
            Google.Ads.Googleads.V8.Services.SuggestSmartCampaignBudgetOptionsResponse.BudgetOption.t()
            | nil
        }
  defstruct [:low, :recommended, :high]

  field :low, 1,
    type: Google.Ads.Googleads.V8.Services.SuggestSmartCampaignBudgetOptionsResponse.BudgetOption

  field :recommended, 2,
    type: Google.Ads.Googleads.V8.Services.SuggestSmartCampaignBudgetOptionsResponse.BudgetOption

  field :high, 3,
    type: Google.Ads.Googleads.V8.Services.SuggestSmartCampaignBudgetOptionsResponse.BudgetOption
end

defmodule Google.Ads.Googleads.V8.Services.SuggestSmartCampaignAdRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          suggestion_info: Google.Ads.Googleads.V8.Services.SmartCampaignSuggestionInfo.t() | nil
        }
  defstruct [:customer_id, :suggestion_info]

  field :customer_id, 1, type: :string
  field :suggestion_info, 2, type: Google.Ads.Googleads.V8.Services.SmartCampaignSuggestionInfo
end

defmodule Google.Ads.Googleads.V8.Services.SuggestSmartCampaignAdResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad_info: Google.Ads.Googleads.V8.Common.SmartCampaignAdInfo.t() | nil
        }
  defstruct [:ad_info]

  field :ad_info, 1, type: Google.Ads.Googleads.V8.Common.SmartCampaignAdInfo
end

defmodule Google.Ads.Googleads.V8.Services.SmartCampaignSuggestService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.SmartCampaignSuggestService"

  rpc :SuggestSmartCampaignBudgetOptions,
      Google.Ads.Googleads.V8.Services.SuggestSmartCampaignBudgetOptionsRequest,
      Google.Ads.Googleads.V8.Services.SuggestSmartCampaignBudgetOptionsResponse

  rpc :SuggestSmartCampaignAd,
      Google.Ads.Googleads.V8.Services.SuggestSmartCampaignAdRequest,
      Google.Ads.Googleads.V8.Services.SuggestSmartCampaignAdResponse
end

defmodule Google.Ads.Googleads.V8.Services.SmartCampaignSuggestService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.SmartCampaignSuggestService.Service
end
