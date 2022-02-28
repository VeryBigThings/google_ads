defmodule Google.Ads.Googleads.V10.Resources.Label do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          status: Google.Ads.Googleads.V10.Enums.LabelStatusEnum.LabelStatus.t(),
          text_label: Google.Ads.Googleads.V10.Common.TextLabel.t() | nil
        }

  defstruct resource_name: "",
            id: 0,
            name: "",
            status: :UNSPECIFIED,
            text_label: nil

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 6, type: :int64, deprecated: false
  field :name, 7, type: :string

  field :status, 4,
    type: Google.Ads.Googleads.V10.Enums.LabelStatusEnum.LabelStatus,
    enum: true,
    deprecated: false

  field :text_label, 5, type: Google.Ads.Googleads.V10.Common.TextLabel, json_name: "textLabel"
end
