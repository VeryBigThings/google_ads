defmodule Google.Ads.Googleads.V8Availabilities.Common.OfflineUserAddressInfo do
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

defmodule Google.Ads.Googleads.V8Availabilities.Common.UserIdentifier do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          identifier: {atom, any},
          user_identifier_source:
            Google.Ads.Googleads.V8Availabilities.Enums.UserIdentifierSourceEnum.UserIdentifierSource.t()
        }

  defstruct [:identifier, :user_identifier_source]

  oneof :identifier, 0

  field :user_identifier_source, 6,
    type: Google.Ads.Googleads.V8Availabilities.Enums.UserIdentifierSourceEnum.UserIdentifierSource,
    enum: true

  field :hashed_email, 7, type: :string, oneof: 0
  field :hashed_phone_number, 8, type: :string, oneof: 0
  field :mobile_id, 9, type: :string, oneof: 0
  field :third_party_user_id, 10, type: :string, oneof: 0
  field :address_info, 5, type: Google.Ads.Googleads.V8Availabilities.Common.OfflineUserAddressInfo, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.TransactionAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transaction_date_time: String.t(),
          transaction_amount_micros: float | :infinity | :negative_infinity | :nan,
          currency_code: String.t(),
          conversion_action: String.t(),
          order_id: String.t(),
          store_attribute: Google.Ads.Googleads.V8Availabilities.Common.StoreAttribute.t() | nil,
          custom_value: String.t(),
          item_attribute: Google.Ads.Googleads.V8Availabilities.Common.ItemAttribute.t() | nil
        }

  defstruct [
    :transaction_date_time,
    :transaction_amount_micros,
    :currency_code,
    :conversion_action,
    :order_id,
    :store_attribute,
    :custom_value,
    :item_attribute
  ]

  field :transaction_date_time, 8, type: :string
  field :transaction_amount_micros, 9, type: :double
  field :currency_code, 10, type: :string
  field :conversion_action, 11, type: :string
  field :order_id, 12, type: :string
  field :store_attribute, 6, type: Google.Ads.Googleads.V8Availabilities.Common.StoreAttribute
  field :custom_value, 13, type: :string
  field :item_attribute, 14, type: Google.Ads.Googleads.V8Availabilities.Common.ItemAttribute
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.StoreAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          store_code: String.t()
        }

  defstruct [:store_code]

  field :store_code, 2, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.ItemAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          item_id: String.t(),
          merchant_id: integer,
          country_code: String.t(),
          language_code: String.t(),
          quantity: integer
        }

  defstruct [:item_id, :merchant_id, :country_code, :language_code, :quantity]

  field :item_id, 1, type: :string
  field :merchant_id, 2, type: :int64
  field :country_code, 3, type: :string
  field :language_code, 4, type: :string
  field :quantity, 5, type: :int64
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.UserData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_identifiers: [Google.Ads.Googleads.V8Availabilities.Common.UserIdentifier.t()],
          transaction_attribute: Google.Ads.Googleads.V8Availabilities.Common.TransactionAttribute.t() | nil,
          user_attribute: Google.Ads.Googleads.V8Availabilities.Common.UserAttribute.t() | nil
        }

  defstruct [:user_identifiers, :transaction_attribute, :user_attribute]

  field :user_identifiers, 1, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Common.UserIdentifier
  field :transaction_attribute, 2, type: Google.Ads.Googleads.V8Availabilities.Common.TransactionAttribute
  field :user_attribute, 3, type: Google.Ads.Googleads.V8Availabilities.Common.UserAttribute
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.UserAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          lifetime_value_micros: integer,
          lifetime_value_bucket: integer,
          last_purchase_date_time: String.t(),
          average_purchase_count: integer,
          average_purchase_value_micros: integer,
          acquisition_date_time: String.t()
        }

  defstruct [
    :lifetime_value_micros,
    :lifetime_value_bucket,
    :last_purchase_date_time,
    :average_purchase_count,
    :average_purchase_value_micros,
    :acquisition_date_time
  ]

  field :lifetime_value_micros, 1, type: :int64
  field :lifetime_value_bucket, 2, type: :int32
  field :last_purchase_date_time, 3, type: :string
  field :average_purchase_count, 4, type: :int32
  field :average_purchase_value_micros, 5, type: :int64
  field :acquisition_date_time, 6, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.CustomerMatchUserListMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_list: String.t()
        }

  defstruct [:user_list]

  field :user_list, 2, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.StoreSalesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          loyalty_fraction: float | :infinity | :negative_infinity | :nan,
          transaction_upload_fraction: float | :infinity | :negative_infinity | :nan,
          custom_key: String.t(),
          third_party_metadata:
            Google.Ads.Googleads.V8Availabilities.Common.StoreSalesThirdPartyMetadata.t() | nil
        }

  defstruct [:loyalty_fraction, :transaction_upload_fraction, :custom_key, :third_party_metadata]

  field :loyalty_fraction, 5, type: :double
  field :transaction_upload_fraction, 6, type: :double
  field :custom_key, 7, type: :string

  field :third_party_metadata, 3,
    type: Google.Ads.Googleads.V8Availabilities.Common.StoreSalesThirdPartyMetadata
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.StoreSalesThirdPartyMetadata do
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
