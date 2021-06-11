defmodule Google.Ads.Googleads.V8.Common.TagSnippet do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V8.Enums.TrackingCodeTypeEnum.TrackingCodeType.t(),
          page_format:
            Google.Ads.Googleads.V8.Enums.TrackingCodePageFormatEnum.TrackingCodePageFormat.t(),
          global_site_tag: String.t(),
          event_snippet: String.t()
        }

  defstruct [:type, :page_format, :global_site_tag, :event_snippet]

  field :type, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.TrackingCodeTypeEnum.TrackingCodeType,
    enum: true

  field :page_format, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.TrackingCodePageFormatEnum.TrackingCodePageFormat,
    enum: true

  field :global_site_tag, 5, optional: true, type: :string
  field :event_snippet, 6, optional: true, type: :string
end
