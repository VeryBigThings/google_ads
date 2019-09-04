defmodule Google.Ads.Googleads.V2.Errors.CampaignFeedErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.CampaignFeedErrorEnum.CampaignFeedError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:FEED_ALREADY_EXISTS_FOR_PLACEHOLDER_TYPE, 2)
  field(:CANNOT_CREATE_FOR_REMOVED_FEED, 4)
  field(:CANNOT_CREATE_ALREADY_EXISTING_CAMPAIGN_FEED, 5)
  field(:CANNOT_MODIFY_REMOVED_CAMPAIGN_FEED, 6)
  field(:INVALID_PLACEHOLDER_TYPE, 7)
  field(:MISSING_FEEDMAPPING_FOR_PLACEHOLDER_TYPE, 8)
end
