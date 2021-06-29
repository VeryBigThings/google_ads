defmodule Google.Ads.Googleads.V8Availabilities.Resources.CampaignBudget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          amount_micros: integer,
          total_amount_micros: integer,
          status: Google.Ads.Googleads.V8Availabilities.Enums.BudgetStatusEnum.BudgetStatus.t(),
          delivery_method:
            Google.Ads.Googleads.V8Availabilities.Enums.BudgetDeliveryMethodEnum.BudgetDeliveryMethod.t(),
          explicitly_shared: boolean,
          reference_count: integer,
          has_recommended_budget: boolean,
          recommended_budget_amount_micros: integer,
          period: Google.Ads.Googleads.V8Availabilities.Enums.BudgetPeriodEnum.BudgetPeriod.t(),
          recommended_budget_estimated_change_weekly_clicks: integer,
          recommended_budget_estimated_change_weekly_cost_micros: integer,
          recommended_budget_estimated_change_weekly_interactions: integer,
          recommended_budget_estimated_change_weekly_views: integer,
          type: Google.Ads.Googleads.V8Availabilities.Enums.BudgetTypeEnum.BudgetType.t()
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
  field :id, 19, type: :int64
  field :name, 20, type: :string
  field :amount_micros, 21, type: :int64
  field :total_amount_micros, 22, type: :int64
  field :status, 6, type: Google.Ads.Googleads.V8Availabilities.Enums.BudgetStatusEnum.BudgetStatus, enum: true

  field :delivery_method, 7,
    type: Google.Ads.Googleads.V8Availabilities.Enums.BudgetDeliveryMethodEnum.BudgetDeliveryMethod,
    enum: true

  field :explicitly_shared, 23, type: :bool
  field :reference_count, 24, type: :int64
  field :has_recommended_budget, 25, type: :bool
  field :recommended_budget_amount_micros, 26, type: :int64
  field :period, 13, type: Google.Ads.Googleads.V8Availabilities.Enums.BudgetPeriodEnum.BudgetPeriod, enum: true
  field :recommended_budget_estimated_change_weekly_clicks, 27, type: :int64
  field :recommended_budget_estimated_change_weekly_cost_micros, 28, type: :int64
  field :recommended_budget_estimated_change_weekly_interactions, 29, type: :int64
  field :recommended_budget_estimated_change_weekly_views, 30, type: :int64
  field :type, 18, type: Google.Ads.Googleads.V8Availabilities.Enums.BudgetTypeEnum.BudgetType, enum: true
end
