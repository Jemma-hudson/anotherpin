ActiveAdmin.register Product do
  permit_params :title, :image_1, :image_2, :image_3, :image_4, :image_5,
    :price, :is_featured, :collection, :description, :is_sold_out

  index do
    selectable_column
    index_column
    column "Main Image" do |product|
      image_tag (product.image_1.thumb.url) if product.image_1_url
    end
    column :title
    column :price
    column :is_featured
    column :is_sold_out
    actions

  end



  form do |f|
    f.inputs "Product info" do
      f.input :title
      f.input :price
      f.input :description
      f.input :collection
    end

    f.inputs "Filters" do
      f.input :is_featured, label: "Featurd on homepage?"
      f.input :is_sold_out, label: "Sold out?"
    end

    f.inputs "Images" do
      f.input :image_1
      f.input :image_2
      f.input :image_3
      f.input :image_4
      f.input :image_5
    end
    f.actions
  end

end
