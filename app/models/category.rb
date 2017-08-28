# == Schema Information
#
# Table name: categories
#
#  id             :integer          not null, primary key
#  title          :string(255)
#  parent_id      :integer
#  lft            :integer
#  rgt            :integer
#  depth          :integer          default(0), not null
#  children_count :integer          default(0), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Category < ApplicationRecord
  acts_as_nested_set

  has_many :brands
  has_many :properties
  has_many :products

  def self.menu_categories
    categories = Hash.new
    Category.roots.each do |cat|
      cat_menu = Hash.new
      cat.children.each do |childCat|

        cat_leaf = Hash.new
        cat_leaf_at = Hash.new
        childCat.children.each_with_index do |cCat, index|
          if cCat.descendants != []
            cat_leaf[cCat.title] = cCat.children
            child = childCat.children.to_a
            child.delete_at(index)
            child[index] = cat_leaf
            cat_leaf_at = child
          else
            cat_leaf_at = childCat.children
          end
        end

        cat_menu[childCat.title] = cat_leaf_at
      end
      categories[cat.title] = cat_menu
    end
    categories
  end
end
