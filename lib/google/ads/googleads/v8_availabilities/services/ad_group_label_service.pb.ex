defmodule Google.Ads.Googleads.V8Availabilities.Services.GetAdGroupLabelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAdGroupLabelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.AdGroupLabelOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AdGroupLabelOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.AdGroupLabel, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAdGroupLabelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateAdGroupLabelResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAdGroupLabelResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AdGroupLabelService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.AdGroupLabelService"

  rpc :GetAdGroupLabel,
      Google.Ads.Googleads.V8Availabilities.Services.GetAdGroupLabelRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.AdGroupLabel

  rpc :MutateAdGroupLabels,
      Google.Ads.Googleads.V8Availabilities.Services.MutateAdGroupLabelsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateAdGroupLabelsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AdGroupLabelService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.AdGroupLabelService.Service
end
