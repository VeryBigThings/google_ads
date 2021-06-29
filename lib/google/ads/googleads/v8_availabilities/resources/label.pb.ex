defmodule Google.Ads.Googleads.V8Availabilities.Resources.Label do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          status: Google.Ads.Googleads.V8Availabilities.Enums.LabelStatusEnum.LabelStatus.t(),
          text_label: Google.Ads.Googleads.V8Availabilities.Common.TextLabel.t() | nil
        }

  defstruct [:resource_name, :id, :name, :status, :text_label]

  field :resource_name, 1, type: :string
  field :id, 6, type: :int64
  field :name, 7, type: :string
  field :status, 4, type: Google.Ads.Googleads.V8Availabilities.Enums.LabelStatusEnum.LabelStatus, enum: true
  field :text_label, 5, type: Google.Ads.Googleads.V8Availabilities.Common.TextLabel
end
