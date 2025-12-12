defmodule Google.Ads.Googleads.V8.Services.GetRecommendationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.ApplyRecommendationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.ApplyRecommendationOperation

  field :partial_failure, 3, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.ApplyRecommendationOperation.CampaignBudgetParameters do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :new_budget_amount_micros, 2, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Services.ApplyRecommendationOperation.TextAdParameters do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :ad, 1, optional: true, type: Google.Ads.Googleads.V8.Resources.Ad
end

defmodule Google.Ads.Googleads.V8.Services.ApplyRecommendationOperation.KeywordParameters do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :ad_group, 4, optional: true, type: :string

  field :match_type, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    enum: true

  field :cpc_bid_micros, 5, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Services.ApplyRecommendationOperation.TargetCpaOptInParameters do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :target_cpa_micros, 3, optional: true, type: :int64
  field :new_campaign_budget_amount_micros, 4, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Services.ApplyRecommendationOperation.TargetRoasOptInParameters do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :target_roas, 1, optional: true, type: :double
  field :new_campaign_budget_amount_micros, 2, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Services.ApplyRecommendationOperation.CalloutExtensionParameters do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :callout_extensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.CalloutFeedItem
end

defmodule Google.Ads.Googleads.V8.Services.ApplyRecommendationOperation.CallExtensionParameters do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :call_extensions, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.CallFeedItem
end

defmodule Google.Ads.Googleads.V8.Services.ApplyRecommendationOperation.SitelinkExtensionParameters do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :sitelink_extensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.SitelinkFeedItem
end

defmodule Google.Ads.Googleads.V8.Services.ApplyRecommendationOperation.MoveUnusedBudgetParameters do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :budget_micros_to_move, 2, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Services.ApplyRecommendationOperation.ResponsiveSearchAdParameters do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :ad, 1, required: true, type: Google.Ads.Googleads.V8.Resources.Ad
end

defmodule Google.Ads.Googleads.V8.Services.ApplyRecommendationOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :apply_parameters, 0
  field :resource_name, 1, optional: true, type: :string

  field :campaign_budget, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.ApplyRecommendationOperation.CampaignBudgetParameters,
    oneof: 0

  field :text_ad, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.ApplyRecommendationOperation.TextAdParameters,
    oneof: 0

  field :keyword, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.ApplyRecommendationOperation.KeywordParameters,
    oneof: 0

  field :target_cpa_opt_in, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.ApplyRecommendationOperation.TargetCpaOptInParameters,
    oneof: 0

  field :target_roas_opt_in, 10,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.ApplyRecommendationOperation.TargetRoasOptInParameters,
    oneof: 0

  field :callout_extension, 6,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Services.ApplyRecommendationOperation.CalloutExtensionParameters,
    oneof: 0

  field :call_extension, 7,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.ApplyRecommendationOperation.CallExtensionParameters,
    oneof: 0

  field :sitelink_extension, 8,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Services.ApplyRecommendationOperation.SitelinkExtensionParameters,
    oneof: 0

  field :move_unused_budget, 9,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Services.ApplyRecommendationOperation.MoveUnusedBudgetParameters,
    oneof: 0

  field :responsive_search_ad, 11,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Services.ApplyRecommendationOperation.ResponsiveSearchAdParameters,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.ApplyRecommendationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.ApplyRecommendationResult

  field :partial_failure_error, 2, optional: true, type: Google.Rpc.Status
end

defmodule Google.Ads.Googleads.V8.Services.ApplyRecommendationResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.DismissRecommendationRequest.DismissRecommendationOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.DismissRecommendationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operations, 3,
    repeated: true,
    type:
      Google.Ads.Googleads.V8.Services.DismissRecommendationRequest.DismissRecommendationOperation

  field :partial_failure, 2, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.DismissRecommendationResponse.DismissRecommendationResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.DismissRecommendationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :results, 1,
    repeated: true,
    type:
      Google.Ads.Googleads.V8.Services.DismissRecommendationResponse.DismissRecommendationResult

  field :partial_failure_error, 2, optional: true, type: Google.Rpc.Status
end

defmodule Google.Ads.Googleads.V8.Services.RecommendationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.RecommendationService"

  rpc :GetRecommendation,
      Google.Ads.Googleads.V8.Services.GetRecommendationRequest,
      Google.Ads.Googleads.V8.Resources.Recommendation

  rpc :ApplyRecommendation,
      Google.Ads.Googleads.V8.Services.ApplyRecommendationRequest,
      Google.Ads.Googleads.V8.Services.ApplyRecommendationResponse

  rpc :DismissRecommendation,
      Google.Ads.Googleads.V8.Services.DismissRecommendationRequest,
      Google.Ads.Googleads.V8.Services.DismissRecommendationResponse
end

defmodule Google.Ads.Googleads.V8.Services.RecommendationService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.RecommendationService.Service
end
