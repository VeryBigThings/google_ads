defmodule Google.Ads.Googleads.V8.Services.GetCustomAudienceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomAudiencesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.CustomAudienceOperation

  field :validate_only, 3, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.CustomAudienceOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :update_mask, 4, optional: true, type: Google.Protobuf.FieldMask

  field :create, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CustomAudience,
    oneof: 0

  field :update, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CustomAudience,
    oneof: 0

  field :remove, 3, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomAudiencesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateCustomAudienceResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomAudienceResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.CustomAudienceService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CustomAudienceService"

  rpc :GetCustomAudience,
      Google.Ads.Googleads.V8.Services.GetCustomAudienceRequest,
      Google.Ads.Googleads.V8.Resources.CustomAudience

  rpc :MutateCustomAudiences,
      Google.Ads.Googleads.V8.Services.MutateCustomAudiencesRequest,
      Google.Ads.Googleads.V8.Services.MutateCustomAudiencesResponse
end

defmodule Google.Ads.Googleads.V8.Services.CustomAudienceService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.CustomAudienceService.Service
end
