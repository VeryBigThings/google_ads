defmodule Google.Ads.Googleads.V2.Services.GetKeywordPlanNegativeKeywordRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field(:resource_name, 1, type: :string)
end

defmodule Google.Ads.Googleads.V2.Services.MutateKeywordPlanNegativeKeywordsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V2.Services.KeywordPlanNegativeKeywordOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }
  defstruct [:customer_id, :operations, :partial_failure, :validate_only]

  field(:customer_id, 1, type: :string)

  field(:operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V2.Services.KeywordPlanNegativeKeywordOperation
  )

  field(:partial_failure, 3, type: :bool)
  field(:validate_only, 4, type: :bool)
end

defmodule Google.Ads.Googleads.V2.Services.KeywordPlanNegativeKeywordOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }
  defstruct [:operation, :update_mask]

  oneof(:operation, 0)
  field(:update_mask, 4, type: Google.Protobuf.FieldMask)
  field(:create, 1, type: Google.Ads.Googleads.V2.Resources.KeywordPlanNegativeKeyword, oneof: 0)
  field(:update, 2, type: Google.Ads.Googleads.V2.Resources.KeywordPlanNegativeKeyword, oneof: 0)
  field(:remove, 3, type: :string, oneof: 0)
end

defmodule Google.Ads.Googleads.V2.Services.MutateKeywordPlanNegativeKeywordsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V2.Services.MutateKeywordPlanNegativeKeywordResult.t()]
        }
  defstruct [:partial_failure_error, :results]

  field(:partial_failure_error, 3, type: Google.Rpc.Status)

  field(:results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V2.Services.MutateKeywordPlanNegativeKeywordResult
  )
end

defmodule Google.Ads.Googleads.V2.Services.MutateKeywordPlanNegativeKeywordResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field(:resource_name, 1, type: :string)
end

defmodule Google.Ads.Googleads.V2.Services.KeywordPlanNegativeKeywordService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v2.services.KeywordPlanNegativeKeywordService"

  rpc(
    :GetKeywordPlanNegativeKeyword,
    Google.Ads.Googleads.V2.Services.GetKeywordPlanNegativeKeywordRequest,
    Google.Ads.Googleads.V2.Resources.KeywordPlanNegativeKeyword
  )

  rpc(
    :MutateKeywordPlanNegativeKeywords,
    Google.Ads.Googleads.V2.Services.MutateKeywordPlanNegativeKeywordsRequest,
    Google.Ads.Googleads.V2.Services.MutateKeywordPlanNegativeKeywordsResponse
  )
end

defmodule Google.Ads.Googleads.V2.Services.KeywordPlanNegativeKeywordService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V2.Services.KeywordPlanNegativeKeywordService.Service
end
