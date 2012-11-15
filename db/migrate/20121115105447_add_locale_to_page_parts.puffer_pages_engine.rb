# This migration comes from puffer_pages_engine (originally 20120817143224)
class AddLocaleToPageParts < ActiveRecord::Migration
  def self.up
    add_column :page_parts, :locale, :string
    PagePart.update_all :locale => I18n.default_locale
  end

  def self.down
    remove_column :page_parts, :locale
  end
end
