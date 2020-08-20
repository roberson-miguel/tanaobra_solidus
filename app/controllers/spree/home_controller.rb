# frozen_string_literal: true

module Spree
  class HomeController < Spree::StoreController
    helper 'spree/products'
    respond_to :html

    def index
      @searcher = build_searcher(params.merge(include_images: true))
      @products = @searcher.retrieve_products.ascend_by_name
      @taxonomies = Spree::Taxonomy.includes(root: :children)
    end
  end
end
