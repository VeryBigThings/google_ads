defmodule Google.Ads.Googleads.V8Availabilities.Services.GetCustomAudienceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomAudiencesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.CustomAudienceOperation

  field :validate_only, 3, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomAudienceOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.CustomAudience, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.CustomAudience, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomAudiencesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateCustomAudienceResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomAudienceResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomAudienceService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.CustomAudienceService"

  rpc :GetCustomAudience,
      Google.Ads.Googleads.V8Availabilities.Services.GetCustomAudienceRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.CustomAudience

  rpc :MutateCustomAudiences,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCustomAudiencesRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCustomAudiencesResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomAudienceService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.CustomAudienceService.Service
end
