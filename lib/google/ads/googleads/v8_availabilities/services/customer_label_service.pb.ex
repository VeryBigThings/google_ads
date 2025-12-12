defmodule Google.Ads.Googleads.V8Availabilities.Services.GetCustomerLabelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerLabelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.CustomerLabelOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomerLabelOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.CustomerLabel, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerLabelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerLabelResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerLabelResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomerLabelService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.CustomerLabelService"

  rpc :GetCustomerLabel,
      Google.Ads.Googleads.V8Availabilities.Services.GetCustomerLabelRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.CustomerLabel

  rpc :MutateCustomerLabels,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerLabelsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerLabelsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomerLabelService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.CustomerLabelService.Service
end
