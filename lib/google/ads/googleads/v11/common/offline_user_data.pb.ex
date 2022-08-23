defmodule Google.Ads.Googleads.V11.Common.OfflineUserAddressInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hashed_first_name: String.t(),
          hashed_last_name: String.t(),
          city: String.t(),
          state: String.t(),
          country_code: String.t(),
          postal_code: String.t(),
          hashed_street_address: String.t()
        }

  defstruct hashed_first_name: "",
            hashed_last_name: "",
            city: "",
            state: "",
            country_code: "",
            postal_code: "",
            hashed_street_address: ""

  field :hashed_first_name, 7, type: :string, json_name: "hashedFirstName"
  field :hashed_last_name, 8, type: :string, json_name: "hashedLastName"
  field :city, 9, type: :string
  field :state, 10, type: :string
  field :country_code, 11, type: :string, json_name: "countryCode"
  field :postal_code, 12, type: :string, json_name: "postalCode"
  field :hashed_street_address, 13, type: :string, json_name: "hashedStreetAddress"
end
defmodule Google.Ads.Googleads.V11.Common.UserIdentifier do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          identifier:
            {:hashed_email, String.t()}
            | {:hashed_phone_number, String.t()}
            | {:mobile_id, String.t()}
            | {:third_party_user_id, String.t()}
            | {:address_info, Google.Ads.Googleads.V11.Common.OfflineUserAddressInfo.t() | nil},
          user_identifier_source:
            Google.Ads.Googleads.V11.Enums.UserIdentifierSourceEnum.UserIdentifierSource.t()
        }

  defstruct identifier: nil,
            user_identifier_source: :UNSPECIFIED

  oneof :identifier, 0

  field :user_identifier_source, 6,
    type: Google.Ads.Googleads.V11.Enums.UserIdentifierSourceEnum.UserIdentifierSource,
    json_name: "userIdentifierSource",
    enum: true

  field :hashed_email, 7, type: :string, json_name: "hashedEmail", oneof: 0
  field :hashed_phone_number, 8, type: :string, json_name: "hashedPhoneNumber", oneof: 0
  field :mobile_id, 9, type: :string, json_name: "mobileId", oneof: 0
  field :third_party_user_id, 10, type: :string, json_name: "thirdPartyUserId", oneof: 0

  field :address_info, 5,
    type: Google.Ads.Googleads.V11.Common.OfflineUserAddressInfo,
    json_name: "addressInfo",
    oneof: 0
end
defmodule Google.Ads.Googleads.V11.Common.TransactionAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transaction_date_time: String.t(),
          transaction_amount_micros: float | :infinity | :negative_infinity | :nan,
          currency_code: String.t(),
          conversion_action: String.t(),
          order_id: String.t(),
          store_attribute: Google.Ads.Googleads.V11.Common.StoreAttribute.t() | nil,
          custom_value: String.t(),
          item_attribute: Google.Ads.Googleads.V11.Common.ItemAttribute.t() | nil
        }

  defstruct transaction_date_time: "",
            transaction_amount_micros: 0.0,
            currency_code: "",
            conversion_action: "",
            order_id: "",
            store_attribute: nil,
            custom_value: "",
            item_attribute: nil

  field :transaction_date_time, 8, type: :string, json_name: "transactionDateTime"
  field :transaction_amount_micros, 9, type: :double, json_name: "transactionAmountMicros"
  field :currency_code, 10, type: :string, json_name: "currencyCode"
  field :conversion_action, 11, type: :string, json_name: "conversionAction"
  field :order_id, 12, type: :string, json_name: "orderId"

  field :store_attribute, 6,
    type: Google.Ads.Googleads.V11.Common.StoreAttribute,
    json_name: "storeAttribute"

  field :custom_value, 13, type: :string, json_name: "customValue"

  field :item_attribute, 14,
    type: Google.Ads.Googleads.V11.Common.ItemAttribute,
    json_name: "itemAttribute"
end
defmodule Google.Ads.Googleads.V11.Common.StoreAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          store_code: String.t()
        }

  defstruct store_code: ""

  field :store_code, 2, type: :string, json_name: "storeCode"
end
defmodule Google.Ads.Googleads.V11.Common.ItemAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          item_id: String.t(),
          merchant_id: integer,
          country_code: String.t(),
          language_code: String.t(),
          quantity: integer
        }

  defstruct item_id: "",
            merchant_id: 0,
            country_code: "",
            language_code: "",
            quantity: 0

  field :item_id, 1, type: :string, json_name: "itemId"
  field :merchant_id, 2, type: :int64, json_name: "merchantId"
  field :country_code, 3, type: :string, json_name: "countryCode"
  field :language_code, 4, type: :string, json_name: "languageCode"
  field :quantity, 5, type: :int64
end
defmodule Google.Ads.Googleads.V11.Common.UserData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_identifiers: [Google.Ads.Googleads.V11.Common.UserIdentifier.t()],
          transaction_attribute: Google.Ads.Googleads.V11.Common.TransactionAttribute.t() | nil,
          user_attribute: Google.Ads.Googleads.V11.Common.UserAttribute.t() | nil
        }

  defstruct user_identifiers: [],
            transaction_attribute: nil,
            user_attribute: nil

  field :user_identifiers, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.UserIdentifier,
    json_name: "userIdentifiers"

  field :transaction_attribute, 2,
    type: Google.Ads.Googleads.V11.Common.TransactionAttribute,
    json_name: "transactionAttribute"

  field :user_attribute, 3,
    type: Google.Ads.Googleads.V11.Common.UserAttribute,
    json_name: "userAttribute"
end
defmodule Google.Ads.Googleads.V11.Common.UserAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          lifetime_value_micros: integer,
          lifetime_value_bucket: integer,
          last_purchase_date_time: String.t(),
          average_purchase_count: integer,
          average_purchase_value_micros: integer,
          acquisition_date_time: String.t(),
          shopping_loyalty: Google.Ads.Googleads.V11.Common.ShoppingLoyalty.t() | nil,
          lifecycle_stage: String.t(),
          first_purchase_date_time: String.t(),
          event_attribute: [Google.Ads.Googleads.V11.Common.EventAttribute.t()]
        }

  defstruct lifetime_value_micros: 0,
            lifetime_value_bucket: 0,
            last_purchase_date_time: "",
            average_purchase_count: 0,
            average_purchase_value_micros: 0,
            acquisition_date_time: "",
            shopping_loyalty: nil,
            lifecycle_stage: "",
            first_purchase_date_time: "",
            event_attribute: []

  field :lifetime_value_micros, 1, type: :int64, json_name: "lifetimeValueMicros"
  field :lifetime_value_bucket, 2, type: :int32, json_name: "lifetimeValueBucket"
  field :last_purchase_date_time, 3, type: :string, json_name: "lastPurchaseDateTime"
  field :average_purchase_count, 4, type: :int32, json_name: "averagePurchaseCount"
  field :average_purchase_value_micros, 5, type: :int64, json_name: "averagePurchaseValueMicros"
  field :acquisition_date_time, 6, type: :string, json_name: "acquisitionDateTime"

  field :shopping_loyalty, 7,
    type: Google.Ads.Googleads.V11.Common.ShoppingLoyalty,
    json_name: "shoppingLoyalty"

  field :lifecycle_stage, 8, type: :string, json_name: "lifecycleStage", deprecated: false

  field :first_purchase_date_time, 9,
    type: :string,
    json_name: "firstPurchaseDateTime",
    deprecated: false

  field :event_attribute, 10,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.EventAttribute,
    json_name: "eventAttribute",
    deprecated: false
end
defmodule Google.Ads.Googleads.V11.Common.EventAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          event: String.t(),
          event_date_time: String.t(),
          item_attribute: [Google.Ads.Googleads.V11.Common.EventItemAttribute.t()]
        }

  defstruct event: "",
            event_date_time: "",
            item_attribute: []

  field :event, 1, type: :string, deprecated: false
  field :event_date_time, 2, type: :string, json_name: "eventDateTime", deprecated: false

  field :item_attribute, 3,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.EventItemAttribute,
    json_name: "itemAttribute",
    deprecated: false
end
defmodule Google.Ads.Googleads.V11.Common.EventItemAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          item_id: String.t()
        }

  defstruct item_id: ""

  field :item_id, 1, type: :string, json_name: "itemId", deprecated: false
end
defmodule Google.Ads.Googleads.V11.Common.ShoppingLoyalty do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          loyalty_tier: String.t()
        }

  defstruct loyalty_tier: ""

  field :loyalty_tier, 1, type: :string, json_name: "loyaltyTier"
end
defmodule Google.Ads.Googleads.V11.Common.CustomerMatchUserListMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_list: String.t()
        }

  defstruct user_list: ""

  field :user_list, 2, type: :string, json_name: "userList"
end
defmodule Google.Ads.Googleads.V11.Common.StoreSalesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          loyalty_fraction: float | :infinity | :negative_infinity | :nan,
          transaction_upload_fraction: float | :infinity | :negative_infinity | :nan,
          custom_key: String.t(),
          third_party_metadata:
            Google.Ads.Googleads.V11.Common.StoreSalesThirdPartyMetadata.t() | nil
        }

  defstruct loyalty_fraction: 0.0,
            transaction_upload_fraction: 0.0,
            custom_key: "",
            third_party_metadata: nil

  field :loyalty_fraction, 5, type: :double, json_name: "loyaltyFraction"
  field :transaction_upload_fraction, 6, type: :double, json_name: "transactionUploadFraction"
  field :custom_key, 7, type: :string, json_name: "customKey"

  field :third_party_metadata, 3,
    type: Google.Ads.Googleads.V11.Common.StoreSalesThirdPartyMetadata,
    json_name: "thirdPartyMetadata"
end
defmodule Google.Ads.Googleads.V11.Common.StoreSalesThirdPartyMetadata do
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

  defstruct advertiser_upload_date_time: "",
            valid_transaction_fraction: 0.0,
            partner_match_fraction: 0.0,
            partner_upload_fraction: 0.0,
            bridge_map_version_id: "",
            partner_id: 0

  field :advertiser_upload_date_time, 7, type: :string, json_name: "advertiserUploadDateTime"
  field :valid_transaction_fraction, 8, type: :double, json_name: "validTransactionFraction"
  field :partner_match_fraction, 9, type: :double, json_name: "partnerMatchFraction"
  field :partner_upload_fraction, 10, type: :double, json_name: "partnerUploadFraction"
  field :bridge_map_version_id, 11, type: :string, json_name: "bridgeMapVersionId"
  field :partner_id, 12, type: :int64, json_name: "partnerId"
end
