ActiveAdmin.register Product do
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  permit_params :title, :content


  ### Active Admin has the following index renderers:
  ### Table:  A table drawn with each row being a resource (http://activeadmin.info/docs/3-index-pages/index-as-table.html)
  index do
    # Display an attribute or a method on a resoure, simply pass a symbol into column method.
    # column :title

    # Add a link to the product
    # Sorting - If a column is defined using a block, you must pass
    # the key to turn on sorting.
    column "Title", :sortable => :title do |product|
      link_to product.title, admin_product_path(product)
    end
    column :content

    # Or you can rewrite default title of each column
    # column "Content of Product", :content

    # To setup links to View, Edit and Delete, use actions method
    actions
  end



end
