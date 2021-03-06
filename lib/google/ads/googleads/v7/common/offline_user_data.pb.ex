defmodule Google.Ads.Googleads.V7.Common.OfflineUserAddressInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hashed_first_name: String.t(),
          hashed_last_name: String.t(),
          city: String.t(),
          state: String.t(),
          country_code: String.t(),
          postal_code: String.t()
        }
  defstruct [:hashed_first_name, :hashed_last_name, :city, :state, :country_code, :postal_code]

  field :hashed_first_name, 7, type: :string
  field :hashed_last_name, 8, type: :string
  field :city, 9, type: :string
  field :state, 10, type: :string
  field :country_code, 11, type: :string
  field :postal_code, 12, type: :string
end

defmodule Google.Ads.Googleads.V7.Common.UserIdentifier do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          identifier: {atom, any},
          user_identifier_source:
            Google.Ads.Googleads.V7.Enums.UserIdentifierSourceEnum.UserIdentifierSource.t()
        }
  defstruct [:identifier, :user_identifier_source]

  oneof :identifier, 0

  field :user_identifier_source, 6,
    type: Google.Ads.Googleads.V7.Enums.UserIdentifierSourceEnum.UserIdentifierSource,
    enum: true

  field :hashed_email, 7, type: :string, oneof: 0
  field :hashed_phone_number, 8, type: :string, oneof: 0
  field :mobile_id, 9, type: :string, oneof: 0
  field :third_party_user_id, 10, type: :string, oneof: 0
  field :address_info, 5, type: Google.Ads.Googleads.V7.Common.OfflineUserAddressInfo, oneof: 0
end

defmodule Google.Ads.Googleads.V7.Common.TransactionAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transaction_date_time: String.t(),
          transaction_amount_micros: float | :infinity | :negative_infinity | :nan,
          currency_code: String.t(),
          conversion_action: String.t(),
          order_id: String.t(),
          store_attribute: Google.Ads.Googleads.V7.Common.StoreAttribute.t() | nil,
          custom_value: String.t()
        }
  defstruct [
    :transaction_date_time,
    :transaction_amount_micros,
    :currency_code,
    :conversion_action,
    :order_id,
    :store_attribute,
    :custom_value
  ]

  field :transaction_date_time, 8, type: :string
  field :transaction_amount_micros, 9, type: :double
  field :currency_code, 10, type: :string
  field :conversion_action, 11, type: :string
  field :order_id, 12, type: :string
  field :store_attribute, 6, type: Google.Ads.Googleads.V7.Common.StoreAttribute
  field :custom_value, 13, type: :string
end

defmodule Google.Ads.Googleads.V7.Common.StoreAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          store_code: String.t()
        }
  defstruct [:store_code]

  field :store_code, 2, type: :string
end

defmodule Google.Ads.Googleads.V7.Common.UserData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_identifiers: [Google.Ads.Googleads.V7.Common.UserIdentifier.t()],
          transaction_attribute: Google.Ads.Googleads.V7.Common.TransactionAttribute.t() | nil,
          user_attribute: Google.Ads.Googleads.V7.Common.UserAttribute.t() | nil
        }
  defstruct [:user_identifiers, :transaction_attribute, :user_attribute]

  field :user_identifiers, 1, repeated: true, type: Google.Ads.Googleads.V7.Common.UserIdentifier
  field :transaction_attribute, 2, type: Google.Ads.Googleads.V7.Common.TransactionAttribute
  field :user_attribute, 3, type: Google.Ads.Googleads.V7.Common.UserAttribute
end

defmodule Google.Ads.Googleads.V7.Common.UserAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          lifetime_value_micros: integer,
          lifetime_value_bucket: integer
        }
  defstruct [:lifetime_value_micros, :lifetime_value_bucket]

  field :lifetime_value_micros, 1, type: :int64
  field :lifetime_value_bucket, 2, type: :int32
end

defmodule Google.Ads.Googleads.V7.Common.CustomerMatchUserListMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_list: String.t()
        }
  defstruct [:user_list]

  field :user_list, 2, type: :string
end

defmodule Google.Ads.Googleads.V7.Common.StoreSalesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          loyalty_fraction: float | :infinity | :negative_infinity | :nan,
          transaction_upload_fraction: float | :infinity | :negative_infinity | :nan,
          custom_key: String.t(),
          third_party_metadata:
            Google.Ads.Googleads.V7.Common.StoreSalesThirdPartyMetadata.t() | nil
        }
  defstruct [:loyalty_fraction, :transaction_upload_fraction, :custom_key, :third_party_metadata]

  field :loyalty_fraction, 5, type: :double
  field :transaction_upload_fraction, 6, type: :double
  field :custom_key, 7, type: :string

  field :third_party_metadata, 3,
    type: Google.Ads.Googleads.V7.Common.StoreSalesThirdPartyMetadata
end

defmodule Google.Ads.Googleads.V7.Common.StoreSalesThirdPartyMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          advertiser_upload_date_time: String.t(),
          valid_transaction_fraction: float | :infinity | :negative_infinity | :nan,
          partner_match_fraction: float | :infinity | :negative_infinity | :nan,
          partner_upload_fraction: float | :infinity | :negative_infinity | :nan,
          bridge_map_version_id: String.t(),
          partner_id: integer
        }
  defstruct [
    :advertiser_upload_date_time,
    :valid_transaction_fraction,
    :partner_match_fraction,
    :partner_upload_fraction,
    :bridge_map_version_id,
    :partner_id
  ]

  field :advertiser_upload_date_time, 7, type: :string
  field :valid_transaction_fraction, 8, type: :double
  field :partner_match_fraction, 9, type: :double
  field :partner_upload_fraction, 10, type: :double
  field :bridge_map_version_id, 11, type: :string
  field :partner_id, 12, type: :int64
end
