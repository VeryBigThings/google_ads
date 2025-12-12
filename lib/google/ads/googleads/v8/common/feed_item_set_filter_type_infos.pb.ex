defmodule Google.Ads.Googleads.V8.Common.DynamicLocationSetFilter do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :labels, 1, repeated: true, type: :string

  field :business_name_filter, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.BusinessNameFilter
end

defmodule Google.Ads.Googleads.V8.Common.BusinessNameFilter do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :business_name, 1, optional: true, type: :string

  field :filter_type, 2,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.FeedItemSetStringFilterTypeEnum.FeedItemSetStringFilterType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Common.DynamicAffiliateLocationSetFilter do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :chain_ids, 1, repeated: true, type: :int64
end
