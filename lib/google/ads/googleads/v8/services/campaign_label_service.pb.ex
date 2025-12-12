defmodule Google.Ads.Googleads.V8.Services.GetCampaignLabelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignLabelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.CampaignLabelOperation

  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.CampaignLabelOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0

  field :create, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignLabel,
    oneof: 0

  field :remove, 2, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignLabelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateCampaignLabelResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignLabelResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.CampaignLabelService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CampaignLabelService"

  rpc :GetCampaignLabel,
      Google.Ads.Googleads.V8.Services.GetCampaignLabelRequest,
      Google.Ads.Googleads.V8.Resources.CampaignLabel

  rpc :MutateCampaignLabels,
      Google.Ads.Googleads.V8.Services.MutateCampaignLabelsRequest,
      Google.Ads.Googleads.V8.Services.MutateCampaignLabelsResponse
end

defmodule Google.Ads.Googleads.V8.Services.CampaignLabelService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.CampaignLabelService.Service
end
