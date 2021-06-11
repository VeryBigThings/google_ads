defmodule Google.Ads.Googleads.V8.Resources.CampaignBudget do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          amount_micros: integer,
          total_amount_micros: integer,
          status: Google.Ads.Googleads.V8.Enums.BudgetStatusEnum.BudgetStatus.t(),
          delivery_method:
            Google.Ads.Googleads.V8.Enums.BudgetDeliveryMethodEnum.BudgetDeliveryMethod.t(),
          explicitly_shared: boolean,
          reference_count: integer,
          has_recommended_budget: boolean,
          recommended_budget_amount_micros: integer,
          period: Google.Ads.Googleads.V8.Enums.BudgetPeriodEnum.BudgetPeriod.t(),
          recommended_budget_estimated_change_weekly_clicks: integer,
          recommended_budget_estimated_change_weekly_cost_micros: integer,
          recommended_budget_estimated_change_weekly_interactions: integer,
          recommended_budget_estimated_change_weekly_views: integer,
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

  field :resource_name, 1, required: true, type: :string
  field :id, 19, optional: true, type: :int64
  field :name, 20, optional: true, type: :string
  field :amount_micros, 21, optional: true, type: :int64
  field :total_amount_micros, 22, optional: true, type: :int64

  field :status, 6,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.BudgetStatusEnum.BudgetStatus,
    enum: true

  field :delivery_method, 7,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.BudgetDeliveryMethodEnum.BudgetDeliveryMethod,
    enum: true

  field :explicitly_shared, 23, optional: true, type: :bool
  field :reference_count, 24, optional: true, type: :int64
  field :has_recommended_budget, 25, optional: true, type: :bool
  field :recommended_budget_amount_micros, 26, optional: true, type: :int64

  field :period, 13,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.BudgetPeriodEnum.BudgetPeriod,
    enum: true

  field :recommended_budget_estimated_change_weekly_clicks, 27, optional: true, type: :int64
  field :recommended_budget_estimated_change_weekly_cost_micros, 28, optional: true, type: :int64
  field :recommended_budget_estimated_change_weekly_interactions, 29, optional: true, type: :int64
  field :recommended_budget_estimated_change_weekly_views, 30, optional: true, type: :int64

  field :type, 18,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.BudgetTypeEnum.BudgetType,
    enum: true
end
