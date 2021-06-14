defmodule Google.Ads.Googleads.V8.Errors.FeedMappingErrorEnum.FeedMappingError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto2

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :INVALID_PLACEHOLDER_FIELD
          | :INVALID_CRITERION_FIELD
          | :INVALID_PLACEHOLDER_TYPE
          | :INVALID_CRITERION_TYPE
          | :NO_ATTRIBUTE_FIELD_MAPPINGS
          | :FEED_ATTRIBUTE_TYPE_MISMATCH
          | :CANNOT_OPERATE_ON_MAPPINGS_FOR_SYSTEM_GENERATED_FEED
          | :MULTIPLE_MAPPINGS_FOR_PLACEHOLDER_TYPE
          | :MULTIPLE_MAPPINGS_FOR_CRITERION_TYPE
          | :MULTIPLE_MAPPINGS_FOR_PLACEHOLDER_FIELD
          | :MULTIPLE_MAPPINGS_FOR_CRITERION_FIELD
          | :UNEXPECTED_ATTRIBUTE_FIELD_MAPPINGS
          | :LOCATION_PLACEHOLDER_ONLY_FOR_PLACES_FEEDS
          | :CANNOT_MODIFY_MAPPINGS_FOR_TYPED_FEED
          | :INVALID_PLACEHOLDER_TYPE_FOR_NON_SYSTEM_GENERATED_FEED
          | :INVALID_PLACEHOLDER_TYPE_FOR_SYSTEM_GENERATED_FEED_TYPE
          | :ATTRIBUTE_FIELD_MAPPING_MISSING_FIELD

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :INVALID_PLACEHOLDER_FIELD, 2

  field :INVALID_CRITERION_FIELD, 3

  field :INVALID_PLACEHOLDER_TYPE, 4

  field :INVALID_CRITERION_TYPE, 5

  field :NO_ATTRIBUTE_FIELD_MAPPINGS, 7

  field :FEED_ATTRIBUTE_TYPE_MISMATCH, 8

  field :CANNOT_OPERATE_ON_MAPPINGS_FOR_SYSTEM_GENERATED_FEED, 9

  field :MULTIPLE_MAPPINGS_FOR_PLACEHOLDER_TYPE, 10

  field :MULTIPLE_MAPPINGS_FOR_CRITERION_TYPE, 11

  field :MULTIPLE_MAPPINGS_FOR_PLACEHOLDER_FIELD, 12

  field :MULTIPLE_MAPPINGS_FOR_CRITERION_FIELD, 13

  field :UNEXPECTED_ATTRIBUTE_FIELD_MAPPINGS, 14

  field :LOCATION_PLACEHOLDER_ONLY_FOR_PLACES_FEEDS, 15

  field :CANNOT_MODIFY_MAPPINGS_FOR_TYPED_FEED, 16

  field :INVALID_PLACEHOLDER_TYPE_FOR_NON_SYSTEM_GENERATED_FEED, 17

  field :INVALID_PLACEHOLDER_TYPE_FOR_SYSTEM_GENERATED_FEED_TYPE, 18

  field :ATTRIBUTE_FIELD_MAPPING_MISSING_FIELD, 19
end

defmodule Google.Ads.Googleads.V8.Errors.FeedMappingErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto2
  @type t :: %__MODULE__{}

  defstruct []
end
