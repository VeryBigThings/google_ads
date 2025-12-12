defmodule Google.Ads.Googleads.V7.Common.DynamicLocationSetFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :labels, 1, repeated: true, type: :string
  field :business_name_filter, 2, type: Google.Ads.Googleads.V7.Common.BusinessNameFilter
end

defmodule Google.Ads.Googleads.V7.Common.BusinessNameFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :business_name, 1, type: :string

  field :filter_type, 2,
    type:
      Google.Ads.Googleads.V7.Enums.FeedItemSetStringFilterTypeEnum.FeedItemSetStringFilterType,
    enum: true
end

defmodule Google.Ads.Googleads.V7.Common.DynamicAffiliateLocationSetFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :chain_ids, 1, repeated: true, type: :int64
end
