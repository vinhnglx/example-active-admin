# == Schema Information
#
# Table name: products
#
#  id                     :integer          not null, primary key
#  title                  :string(255)
#  content                :text

class Product < ActiveRecord::Base
end
