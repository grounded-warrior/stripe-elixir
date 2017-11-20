defmodule Stripe.Order do
  use Stripe.API, [:list, :retrieve, :create, :update]

  def endpoint do
    "orders"
  end

  def pay_endpoint(id) do
    "#{endpoint()}/#{id}/pay"
  end

  def pay(id, opts \\ []) do
    Stripe.request(:post, pay_endpoint(id), [], opts)
  end
end
