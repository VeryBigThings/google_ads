defmodule Google.Ads.Googleads.V10.Resources.Experiment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          experiment_id: integer,
          name: String.t(),
          description: String.t(),
          suffix: String.t(),
          type: Google.Ads.Googleads.V10.Enums.ExperimentTypeEnum.ExperimentType.t(),
          status: Google.Ads.Googleads.V10.Enums.ExperimentStatusEnum.ExperimentStatus.t(),
          start_date: String.t(),
          end_date: String.t(),
          goals: [Google.Ads.Googleads.V10.Common.MetricGoal.t()],
          long_running_operation: String.t(),
          promote_status:
            Google.Ads.Googleads.V10.Enums.AsyncActionStatusEnum.AsyncActionStatus.t()
        }

  defstruct resource_name: "",
            experiment_id: 0,
            name: "",
            description: "",
            suffix: "",
            type: :UNSPECIFIED,
            status: :UNSPECIFIED,
            start_date: "",
            end_date: "",
            goals: [],
            long_running_operation: "",
            promote_status: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :experiment_id, 9, type: :int64, json_name: "experimentId", deprecated: false
  field :name, 10, type: :string, deprecated: false
  field :description, 11, type: :string
  field :suffix, 12, type: :string

  field :type, 13,
    type: Google.Ads.Googleads.V10.Enums.ExperimentTypeEnum.ExperimentType,
    enum: true

  field :status, 14,
    type: Google.Ads.Googleads.V10.Enums.ExperimentStatusEnum.ExperimentStatus,
    enum: true

  field :start_date, 15, type: :string, json_name: "startDate"
  field :end_date, 16, type: :string, json_name: "endDate"
  field :goals, 17, repeated: true, type: Google.Ads.Googleads.V10.Common.MetricGoal

  field :long_running_operation, 18,
    type: :string,
    json_name: "longRunningOperation",
    deprecated: false

  field :promote_status, 19,
    type: Google.Ads.Googleads.V10.Enums.AsyncActionStatusEnum.AsyncActionStatus,
    json_name: "promoteStatus",
    enum: true,
    deprecated: false
end
