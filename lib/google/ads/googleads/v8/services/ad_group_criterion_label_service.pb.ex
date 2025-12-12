defmodule Google.Ads.Googleads.V8.Services.GetAdGroupCriterionLabelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateAdGroupCriterionLabelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.AdGroupCriterionLabelOperation

  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.AdGroupCriterionLabelOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0

  field :create, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AdGroupCriterionLabel,
    oneof: 0

  field :remove, 2, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateAdGroupCriterionLabelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateAdGroupCriterionLabelResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateAdGroupCriterionLabelResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.AdGroupCriterionLabelService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.AdGroupCriterionLabelService"

  rpc :GetAdGroupCriterionLabel,
      Google.Ads.Googleads.V8.Services.GetAdGroupCriterionLabelRequest,
      Google.Ads.Googleads.V8.Resources.AdGroupCriterionLabel

  rpc :MutateAdGroupCriterionLabels,
      Google.Ads.Googleads.V8.Services.MutateAdGroupCriterionLabelsRequest,
      Google.Ads.Googleads.V8.Services.MutateAdGroupCriterionLabelsResponse
end

defmodule Google.Ads.Googleads.V8.Services.AdGroupCriterionLabelService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.AdGroupCriterionLabelService.Service
end
