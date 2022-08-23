defmodule Google.Ads.Googleads.V11.Resources.DynamicSearchAdsSearchTermView do
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

  defstruct resource_name: "",
            search_term: "",
            headline: "",
            landing_page: "",
            page_url: "",
            has_negative_keyword: false,
            has_matching_keyword: false,
            has_negative_url: false

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :search_term, 9, type: :string, json_name: "searchTerm", deprecated: false
  field :headline, 10, type: :string, deprecated: false
  field :landing_page, 11, type: :string, json_name: "landingPage", deprecated: false
  field :page_url, 12, type: :string, json_name: "pageUrl", deprecated: false
  field :has_negative_keyword, 13, type: :bool, json_name: "hasNegativeKeyword", deprecated: false
  field :has_matching_keyword, 14, type: :bool, json_name: "hasMatchingKeyword", deprecated: false
  field :has_negative_url, 15, type: :bool, json_name: "hasNegativeUrl", deprecated: false
end
