defmodule Google.Ads.Googleads.V11.Resources.FeedAttributeOperation.Operator do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ADD

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ADD, 2
end
defmodule Google.Ads.Googleads.V11.Resources.Feed.PlacesLocationFeedData.OAuthInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          http_method: String.t(),
          http_request_url: String.t(),
          http_authorization_header: String.t()
        }

  defstruct http_method: "",
            http_request_url: "",
            http_authorization_header: ""

  field :http_method, 4, type: :string, json_name: "httpMethod"
  field :http_request_url, 5, type: :string, json_name: "httpRequestUrl"
  field :http_authorization_header, 6, type: :string, json_name: "httpAuthorizationHeader"
end
defmodule Google.Ads.Googleads.V11.Resources.Feed.PlacesLocationFeedData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oauth_info:
            Google.Ads.Googleads.V11.Resources.Feed.PlacesLocationFeedData.OAuthInfo.t() | nil,
          email_address: String.t(),
          business_account_id: String.t(),
          business_name_filter: String.t(),
          category_filters: [String.t()],
          label_filters: [String.t()]
        }

  defstruct oauth_info: nil,
            email_address: "",
            business_account_id: "",
            business_name_filter: "",
            category_filters: [],
            label_filters: []

  field :oauth_info, 1,
    type: Google.Ads.Googleads.V11.Resources.Feed.PlacesLocationFeedData.OAuthInfo,
    json_name: "oauthInfo",
    deprecated: false

  field :email_address, 7, type: :string, json_name: "emailAddress"
  field :business_account_id, 8, type: :string, json_name: "businessAccountId"
  field :business_name_filter, 9, type: :string, json_name: "businessNameFilter"
  field :category_filters, 11, repeated: true, type: :string, json_name: "categoryFilters"
  field :label_filters, 12, repeated: true, type: :string, json_name: "labelFilters"
end
defmodule Google.Ads.Googleads.V11.Resources.Feed.AffiliateLocationFeedData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          chain_ids: [integer],
          relationship_type:
            Google.Ads.Googleads.V11.Enums.AffiliateLocationFeedRelationshipTypeEnum.AffiliateLocationFeedRelationshipType.t()
        }

  defstruct chain_ids: [],
            relationship_type: :UNSPECIFIED

  field :chain_ids, 3, repeated: true, type: :int64, json_name: "chainIds"

  field :relationship_type, 2,
    type:
      Google.Ads.Googleads.V11.Enums.AffiliateLocationFeedRelationshipTypeEnum.AffiliateLocationFeedRelationshipType,
    json_name: "relationshipType",
    enum: true
end
defmodule Google.Ads.Googleads.V11.Resources.Feed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          system_feed_generation_data:
            {:places_location_feed_data,
             Google.Ads.Googleads.V11.Resources.Feed.PlacesLocationFeedData.t() | nil}
            | {:affiliate_location_feed_data,
               Google.Ads.Googleads.V11.Resources.Feed.AffiliateLocationFeedData.t() | nil},
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          attributes: [Google.Ads.Googleads.V11.Resources.FeedAttribute.t()],
          attribute_operations: [Google.Ads.Googleads.V11.Resources.FeedAttributeOperation.t()],
          origin: Google.Ads.Googleads.V11.Enums.FeedOriginEnum.FeedOrigin.t(),
          status: Google.Ads.Googleads.V11.Enums.FeedStatusEnum.FeedStatus.t()
        }

  defstruct system_feed_generation_data: nil,
            resource_name: "",
            id: 0,
            name: "",
            attributes: [],
            attribute_operations: [],
            origin: :UNSPECIFIED,
            status: :UNSPECIFIED

  oneof :system_feed_generation_data, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 11, type: :int64, deprecated: false
  field :name, 12, type: :string, deprecated: false
  field :attributes, 4, repeated: true, type: Google.Ads.Googleads.V11.Resources.FeedAttribute

  field :attribute_operations, 9,
    repeated: true,
    type: Google.Ads.Googleads.V11.Resources.FeedAttributeOperation,
    json_name: "attributeOperations"

  field :origin, 5,
    type: Google.Ads.Googleads.V11.Enums.FeedOriginEnum.FeedOrigin,
    enum: true,
    deprecated: false

  field :status, 8,
    type: Google.Ads.Googleads.V11.Enums.FeedStatusEnum.FeedStatus,
    enum: true,
    deprecated: false

  field :places_location_feed_data, 6,
    type: Google.Ads.Googleads.V11.Resources.Feed.PlacesLocationFeedData,
    json_name: "placesLocationFeedData",
    oneof: 0

  field :affiliate_location_feed_data, 7,
    type: Google.Ads.Googleads.V11.Resources.Feed.AffiliateLocationFeedData,
    json_name: "affiliateLocationFeedData",
    oneof: 0
end
defmodule Google.Ads.Googleads.V11.Resources.FeedAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: integer,
          name: String.t(),
          type: Google.Ads.Googleads.V11.Enums.FeedAttributeTypeEnum.FeedAttributeType.t(),
          is_part_of_key: boolean
        }

  defstruct id: 0,
            name: "",
            type: :UNSPECIFIED,
            is_part_of_key: false

  field :id, 5, type: :int64
  field :name, 6, type: :string

  field :type, 3,
    type: Google.Ads.Googleads.V11.Enums.FeedAttributeTypeEnum.FeedAttributeType,
    enum: true

  field :is_part_of_key, 7, type: :bool, json_name: "isPartOfKey"
end
defmodule Google.Ads.Googleads.V11.Resources.FeedAttributeOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operator: Google.Ads.Googleads.V11.Resources.FeedAttributeOperation.Operator.t(),
          value: Google.Ads.Googleads.V11.Resources.FeedAttribute.t() | nil
        }

  defstruct operator: :UNSPECIFIED,
            value: nil

  field :operator, 1,
    type: Google.Ads.Googleads.V11.Resources.FeedAttributeOperation.Operator,
    enum: true,
    deprecated: false

  field :value, 2, type: Google.Ads.Googleads.V11.Resources.FeedAttribute, deprecated: false
end
