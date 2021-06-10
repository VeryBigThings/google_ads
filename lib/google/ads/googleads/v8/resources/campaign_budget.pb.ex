defmodule Google.Ads.Googleads.V8.Resources.CampaignBudget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          amount_micros: Google.Protobuf.Int64Value.t() | nil,
          total_amount_micros: Google.Protobuf.Int64Value.t() | nil,
          status: Google.Ads.Googleads.V8.Enums.BudgetStatusEnum.BudgetStatus.t(),
          delivery_method:
            Google.Ads.Googleads.V8.Enums.BudgetDeliveryMethodEnum.BudgetDeliveryMethod.t(),
          explicitly_shared: Google.Protobuf.BoolValue.t() | nil,
          reference_count: Google.Protobuf.Int64Value.t() | nil,
          has_recommended_budget: Google.Protobuf.BoolValue.t() | nil,
          recommended_budget_amount_micros: Google.Protobuf.Int64Value.t() | nil,
          period: Google.Ads.Googleads.V8.Enums.BudgetPeriodEnum.BudgetPeriod.t(),
          recommended_budget_estimated_change_weekly_clicks: Google.Protobuf.Int64Value.t() | nil,
          recommended_budget_estimated_change_weekly_cost_micros:
            Google.Protobuf.Int64Value.t() | nil,
          recommended_budget_estimated_change_weekly_interactions:
            Google.Protobuf.Int64Value.t() | nil,
          recommended_budget_estimated_change_weekly_views: Google.Protobuf.Int64Value.t() | nil,
          type: Google.Ads.Googleads.V8.Enums.BudgetTypeEnum.BudgetType.t()
        }

  defstruct [
    :resource_name,
    :id,
    :name,
    :amount_micros,
    :total_amount_micros,
    :status,
    :delivery_method,
    :explicitly_shared,
    :reference_count,
    :has_recommended_budget,
    :recommended_budget_amount_micros,
    :period,
    :recommended_budget_estimated_change_weekly_clicks,
    :recommended_budget_estimated_change_weekly_cost_micros,
    :recommended_budget_estimated_change_weekly_interactions,
    :recommended_budget_estimated_change_weekly_views,
    :type
  ]

  field :resource_name, 1, type: :string
  field :id, 19, type: Google.Protobuf.Int64Value
  field :name, 20, type: Google.Protobuf.StringValue
  field :amount_micros, 21, type: Google.Protobuf.Int64Value
  field :total_amount_micros, 22, type: Google.Protobuf.Int64Value
  field :status, 6, type: Google.Ads.Googleads.V8.Enums.BudgetStatusEnum.BudgetStatus, enum: true

  field :delivery_method, 7,
    type: Google.Ads.Googleads.V8.Enums.BudgetDeliveryMethodEnum.BudgetDeliveryMethod,
    enum: true

  field :explicitly_shared, 23, type: Google.Protobuf.BoolValue
  field :reference_count, 24, type: Google.Protobuf.Int64Value
  field :has_recommended_budget, 25, type: Google.Protobuf.BoolValue
  field :recommended_budget_amount_micros, 26, type: Google.Protobuf.Int64Value
  field :period, 13, type: Google.Ads.Googleads.V8.Enums.BudgetPeriodEnum.BudgetPeriod, enum: true
  field :recommended_budget_estimated_change_weekly_clicks, 27, type: Google.Protobuf.Int64Value

  field :recommended_budget_estimated_change_weekly_cost_micros, 28,
    type: Google.Protobuf.Int64Value

  field :recommended_budget_estimated_change_weekly_interactions, 29,
    type: Google.Protobuf.Int64Value

  field :recommended_budget_estimated_change_weekly_views, 30, type: Google.Protobuf.Int64Value
  field :type, 18, type: Google.Ads.Googleads.V8.Enums.BudgetTypeEnum.BudgetType, enum: true
end
