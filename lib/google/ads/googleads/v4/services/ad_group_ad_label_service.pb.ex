defmodule Google.Ads.Googleads.V4.Services.GetAdGroupAdLabelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateAdGroupAdLabelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.AdGroupAdLabelOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.AdGroupAdLabelOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V4.Resources.AdGroupAdLabel, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateAdGroupAdLabelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.MutateAdGroupAdLabelResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateAdGroupAdLabelResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.AdGroupAdLabelService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.AdGroupAdLabelService"

  rpc :GetAdGroupAdLabel,
      Google.Ads.Googleads.V4.Services.GetAdGroupAdLabelRequest,
      Google.Ads.Googleads.V4.Resources.AdGroupAdLabel

  rpc :MutateAdGroupAdLabels,
      Google.Ads.Googleads.V4.Services.MutateAdGroupAdLabelsRequest,
      Google.Ads.Googleads.V4.Services.MutateAdGroupAdLabelsResponse
end

defmodule Google.Ads.Googleads.V4.Services.AdGroupAdLabelService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.AdGroupAdLabelService.Service
end
