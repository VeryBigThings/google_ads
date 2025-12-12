defmodule Google.Ads.Googleads.V8Availabilities.Common.TagSnippet do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :type, 1,
    type: Google.Ads.Googleads.V8Availabilities.Enums.TrackingCodeTypeEnum.TrackingCodeType,
    enum: true

  field :page_format, 2,
    type: Google.Ads.Googleads.V8Availabilities.Enums.TrackingCodePageFormatEnum.TrackingCodePageFormat,
    enum: true

  field :global_site_tag, 5, type: :string
  field :event_snippet, 6, type: :string
end
