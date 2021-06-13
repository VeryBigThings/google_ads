defmodule Google.Ads.Googleads.V8.Resources.Label do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          status: Google.Ads.Googleads.V8.Enums.LabelStatusEnum.LabelStatus.t(),
          text_label: Google.Ads.Googleads.V8.Common.TextLabel.t() | nil
        }

  defstruct [:resource_name, :id, :name, :status, :text_label]

  field :resource_name, 1, optional: true, type: :string
  field :id, 6, optional: true, type: :int64
  field :name, 7, optional: true, type: :string

  field :status, 4,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.LabelStatusEnum.LabelStatus,
    enum: true

  field :text_label, 5, optional: true, type: Google.Ads.Googleads.V8.Common.TextLabel
end
