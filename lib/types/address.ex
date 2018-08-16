defmodule Sendle.Campaigns.Address do
  @moduledoc """
  Shipping address for an Influencer.
  """

  @type t :: %__MODULE__{
          city: binary(),
          postcode: binary(),
          country: binary(),
          state_name: binary(),
          address_line1: binary(),
          address_line2: binary()
        }

  defstruct city: nil,
            postcode: nil,
            country: nil,
            state_name: nil,
            address_line1: nil,
            address_line2: nil

  def build(address) do
    struct(__MODULE__,
      address_line1: address.address_line_1,
      address_line2: address.address_line_2,
      city: address.city,
      state_name: address.state,
      country: address.country,
      postcode: address.postcode
    )
  end
end