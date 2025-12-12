defmodule Google.Ads.Googleads.V4.Resources.FeedAttributeOperation.Operator do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ADD, 2
end

defmodule Google.Ads.Googleads.V4.Resources.Feed.PlacesLocationFeedData.OAuthInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :http_method, 1, type: Google.Protobuf.StringValue
  field :http_request_url, 2, type: Google.Protobuf.StringValue
  field :http_authorization_header, 3, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Resources.Feed.PlacesLocationFeedData do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :oauth_info, 1,
    type: Google.Ads.Googleads.V4.Resources.Feed.PlacesLocationFeedData.OAuthInfo

  field :email_address, 2, type: Google.Protobuf.StringValue
  field :business_account_id, 10, type: Google.Protobuf.StringValue
  field :business_name_filter, 4, type: Google.Protobuf.StringValue
  field :category_filters, 5, repeated: true, type: Google.Protobuf.StringValue
  field :label_filters, 6, repeated: true, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Resources.Feed.AffiliateLocationFeedData do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :chain_ids, 1, repeated: true, type: Google.Protobuf.Int64Value

  field :relationship_type, 2,
    type:
      Google.Ads.Googleads.V4.Enums.AffiliateLocationFeedRelationshipTypeEnum.AffiliateLocationFeedRelationshipType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Resources.Feed do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :system_feed_generation_data, 0

  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value
  field :name, 3, type: Google.Protobuf.StringValue
  field :attributes, 4, repeated: true, type: Google.Ads.Googleads.V4.Resources.FeedAttribute

  field :attribute_operations, 9,
    repeated: true,
    type: Google.Ads.Googleads.V4.Resources.FeedAttributeOperation

  field :origin, 5, type: Google.Ads.Googleads.V4.Enums.FeedOriginEnum.FeedOrigin, enum: true
  field :status, 8, type: Google.Ads.Googleads.V4.Enums.FeedStatusEnum.FeedStatus, enum: true

  field :places_location_feed_data, 6,
    type: Google.Ads.Googleads.V4.Resources.Feed.PlacesLocationFeedData,
    oneof: 0

  field :affiliate_location_feed_data, 7,
    type: Google.Ads.Googleads.V4.Resources.Feed.AffiliateLocationFeedData,
    oneof: 0
end

defmodule Google.Ads.Googleads.V4.Resources.FeedAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :id, 1, type: Google.Protobuf.Int64Value
  field :name, 2, type: Google.Protobuf.StringValue

  field :type, 3,
    type: Google.Ads.Googleads.V4.Enums.FeedAttributeTypeEnum.FeedAttributeType,
    enum: true

  field :is_part_of_key, 4, type: Google.Protobuf.BoolValue
end

defmodule Google.Ads.Googleads.V4.Resources.FeedAttributeOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :operator, 1,
    type: Google.Ads.Googleads.V4.Resources.FeedAttributeOperation.Operator,
    enum: true

  field :value, 2, type: Google.Ads.Googleads.V4.Resources.FeedAttribute
end
