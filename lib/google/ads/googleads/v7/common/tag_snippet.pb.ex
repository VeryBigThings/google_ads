defmodule Google.Ads.Googleads.V7.Common.TagSnippet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V7.Enums.TrackingCodeTypeEnum.TrackingCodeType.t(),
          page_format:
            Google.Ads.Googleads.V7.Enums.TrackingCodePageFormatEnum.TrackingCodePageFormat.t(),
          global_site_tag: String.t(),
          event_snippet: String.t()
        }
  defstruct [:type, :page_format, :global_site_tag, :event_snippet]

  field :type, 1,
    type: Google.Ads.Googleads.V7.Enums.TrackingCodeTypeEnum.TrackingCodeType,
    enum: true

  field :page_format, 2,
    type: Google.Ads.Googleads.V7.Enums.TrackingCodePageFormatEnum.TrackingCodePageFormat,
    enum: true

  field :global_site_tag, 5, type: :string
  field :event_snippet, 6, type: :string
end
