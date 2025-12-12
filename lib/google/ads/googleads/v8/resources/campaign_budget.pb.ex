defmodule Google.Ads.Googleads.V8.Resources.CampaignBudget do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
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
