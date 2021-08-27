defmodule Google.Ads.Googleads.V8.Common.UrlCollection do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url_collection_id: String.t(),
          final_urls: [String.t()],
          final_mobile_urls: [String.t()],
          tracking_url_template: String.t()
        }
  defstruct [:url_collection_id, :final_urls, :final_mobile_urls, :tracking_url_template]

  field :url_collection_id, 5, type: :string
  field :final_urls, 6, repeated: true, type: :string
  field :final_mobile_urls, 7, repeated: true, type: :string
  field :tracking_url_template, 8, type: :string
end
