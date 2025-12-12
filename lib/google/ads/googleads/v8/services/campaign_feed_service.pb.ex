defmodule Google.Ads.Googleads.V8.Services.GetCampaignFeedRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignFeedsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.CampaignFeedOperation

  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool

  field :response_content_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.CampaignFeedOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :update_mask, 4, optional: true, type: Google.Protobuf.FieldMask
  field :create, 1, optional: true, type: Google.Ads.Googleads.V8.Resources.CampaignFeed, oneof: 0
  field :update, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.CampaignFeed, oneof: 0
  field :remove, 3, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignFeedsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateCampaignFeedResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignFeedResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :campaign_feed, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.CampaignFeed
end

defmodule Google.Ads.Googleads.V8.Services.CampaignFeedService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CampaignFeedService"

  rpc :GetCampaignFeed,
      Google.Ads.Googleads.V8.Services.GetCampaignFeedRequest,
      Google.Ads.Googleads.V8.Resources.CampaignFeed

  rpc :MutateCampaignFeeds,
      Google.Ads.Googleads.V8.Services.MutateCampaignFeedsRequest,
      Google.Ads.Googleads.V8.Services.MutateCampaignFeedsResponse
end

defmodule Google.Ads.Googleads.V8.Services.CampaignFeedService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.CampaignFeedService.Service
end
