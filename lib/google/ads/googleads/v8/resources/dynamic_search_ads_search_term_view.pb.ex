defmodule Google.Ads.Googleads.V8.Resources.DynamicSearchAdsSearchTermView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          search_term: String.t(),
          headline: String.t(),
          landing_page: String.t(),
          page_url: String.t(),
          has_negative_keyword: boolean,
          has_matching_keyword: boolean,
          has_negative_url: boolean
        }
  defstruct [
    :resource_name,
    :search_term,
    :headline,
    :landing_page,
    :page_url,
    :has_negative_keyword,
    :has_matching_keyword,
    :has_negative_url
  ]

  field :resource_name, 1, type: :string
  field :search_term, 9, type: :string
  field :headline, 10, type: :string
  field :landing_page, 11, type: :string
  field :page_url, 12, type: :string
  field :has_negative_keyword, 13, type: :bool
  field :has_matching_keyword, 14, type: :bool
  field :has_negative_url, 15, type: :bool
end
