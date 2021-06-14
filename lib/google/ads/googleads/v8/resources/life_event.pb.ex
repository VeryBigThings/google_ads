defmodule Google.Ads.Googleads.V8.Resources.LifeEvent do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          parent: String.t(),
          launched_to_all: boolean,
          availabilities: [Google.Ads.Googleads.V8.Common.CriterionCategoryAvailability.t()]
        }

  defstruct [:resource_name, :id, :name, :parent, :launched_to_all, :availabilities]

  field :resource_name, 1, optional: true, type: :string
  field :id, 2, optional: true, type: :int64
  field :name, 3, optional: true, type: :string
  field :parent, 4, optional: true, type: :string
  field :launched_to_all, 5, optional: true, type: :bool

  field :availabilities, 6,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.CriterionCategoryAvailability
end
