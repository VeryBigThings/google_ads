defmodule Google.Ads.Googleads.V8.Services.GetCustomerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operation: Google.Ads.Googleads.V8.Services.CustomerOperation.t() | nil,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operation, :validate_only, :response_content_type]

  field :customer_id, 1, required: true, type: :string
  field :operation, 4, required: true, type: Google.Ads.Googleads.V8.Services.CustomerOperation
  field :validate_only, 5, optional: true, type: :bool

  field :response_content_type, 6,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.CreateCustomerClientRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          customer_id: String.t(),
          customer_client: Google.Ads.Googleads.V8.Resources.Customer.t() | nil,
          email_address: String.t(),
          access_role: Google.Ads.Googleads.V8.Enums.AccessRoleEnum.AccessRole.t(),
          validate_only: boolean
        }

  defstruct [:customer_id, :customer_client, :email_address, :access_role, :validate_only]

  field :customer_id, 1, required: true, type: :string
  field :customer_client, 2, required: true, type: Google.Ads.Googleads.V8.Resources.Customer
  field :email_address, 5, optional: true, type: :string

  field :access_role, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.AccessRoleEnum.AccessRole,
    enum: true

  field :validate_only, 6, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.CustomerOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          update: Google.Ads.Googleads.V8.Resources.Customer.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:update, :update_mask]

  field :update, 1, optional: true, type: Google.Ads.Googleads.V8.Resources.Customer
  field :update_mask, 2, optional: true, type: Google.Protobuf.FieldMask
end

defmodule Google.Ads.Googleads.V8.Services.CreateCustomerClientResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          invitation_link: String.t()
        }

  defstruct [:resource_name, :invitation_link]

  field :resource_name, 2, optional: true, type: :string
  field :invitation_link, 3, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomerResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          result: Google.Ads.Googleads.V8.Services.MutateCustomerResult.t() | nil
        }

  defstruct [:result]

  field :result, 2, optional: true, type: Google.Ads.Googleads.V8.Services.MutateCustomerResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomerResult do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          customer: Google.Ads.Googleads.V8.Resources.Customer.t() | nil
        }

  defstruct [:resource_name, :customer]

  field :resource_name, 1, optional: true, type: :string
  field :customer, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.Customer
end

defmodule Google.Ads.Googleads.V8.Services.ListAccessibleCustomersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Ads.Googleads.V8.Services.ListAccessibleCustomersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_names: [String.t()]
        }

  defstruct [:resource_names]

  field :resource_names, 1, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.CustomerService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CustomerService"

  rpc :GetCustomer,
      Google.Ads.Googleads.V8.Services.GetCustomerRequest,
      Google.Ads.Googleads.V8.Resources.Customer

  rpc :MutateCustomer,
      Google.Ads.Googleads.V8.Services.MutateCustomerRequest,
      Google.Ads.Googleads.V8.Services.MutateCustomerResponse

  rpc :ListAccessibleCustomers,
      Google.Ads.Googleads.V8.Services.ListAccessibleCustomersRequest,
      Google.Ads.Googleads.V8.Services.ListAccessibleCustomersResponse

  rpc :CreateCustomerClient,
      Google.Ads.Googleads.V8.Services.CreateCustomerClientRequest,
      Google.Ads.Googleads.V8.Services.CreateCustomerClientResponse
end

defmodule Google.Ads.Googleads.V8.Services.CustomerService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.CustomerService.Service
end
