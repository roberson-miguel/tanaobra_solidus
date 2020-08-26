module TanaobraSolidus
  class Calculator::Shipping::FreteTanaobra < Spree::ShippingCalculator
    def self.description
      "Entrega Express- TaNaObra"
    end

    def compute_package(package)
      45.00
    end

    def available?(order)
      order.currency == "BRL"
    end
  end
end