defmodule Google.Ads.Googleads.V4.Services.GetLabelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateLabelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V4.Services.LabelOperation
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.LabelOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V4.Resources.Label, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V4.Resources.Label, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateLabelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V4.Services.MutateLabelResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateLabelResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.LabelService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.LabelService"

  rpc :GetLabel,
      Google.Ads.Googleads.V4.Services.GetLabelRequest,
      Google.Ads.Googleads.V4.Resources.Label

  rpc :MutateLabels,
      Google.Ads.Googleads.V4.Services.MutateLabelsRequest,
      Google.Ads.Googleads.V4.Services.MutateLabelsResponse
end

defmodule Google.Ads.Googleads.V4.Services.LabelService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.LabelService.Service
end
