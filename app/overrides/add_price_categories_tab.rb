Deface::Override.new(:virtual_path => 'spree/admin/shared/sub_menu/_configuration',
	:name => 'add_price_categories_tab',
	:insert_bottom => '[data-hook="admin_configurations_sidebar_menu"]',
	:text => '<%= configurations_sidebar_menu_item Spree.t(:price_categories), admin_price_categories_path %>',
	:disabled => false)
