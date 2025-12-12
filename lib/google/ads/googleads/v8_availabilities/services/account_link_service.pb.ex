defmodule Google.Ads.Googleads.V8Availabilities.Services.GetAccountLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CreateAccountLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string
  field :account_link, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.AccountLink
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CreateAccountLinkResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAccountLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string
  field :operation, 2, type: Google.Ads.Googleads.V8Availabilities.Services.AccountLinkOperation
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AccountLinkOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :update, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.AccountLink, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAccountLinkResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :result, 1, type: Google.Ads.Googleads.V8Availabilities.Services.MutateAccountLinkResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAccountLinkResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AccountLinkService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.AccountLinkService"

  rpc :GetAccountLink,
      Google.Ads.Googleads.V8Availabilities.Services.GetAccountLinkRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.AccountLink

  rpc :CreateAccountLink,
      Google.Ads.Googleads.V8Availabilities.Services.CreateAccountLinkRequest,
      Google.Ads.Googleads.V8Availabilities.Services.CreateAccountLinkResponse

  rpc :MutateAccountLink,
      Google.Ads.Googleads.V8Availabilities.Services.MutateAccountLinkRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateAccountLinkResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AccountLinkService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.AccountLinkService.Service
end
