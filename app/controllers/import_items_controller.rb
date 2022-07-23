class ImportItemsController < ApplicationController

  def create
    folder_path = File.join('excel')

    FileUtils.rm_rf(Dir['lib/excel/*'])

    if !Dir.exist? folder_path
      FileUtils::mkdir_p (Rails.root.join('lib', folder_path))
    end

    uploaded_io = params[:import_items][:items_import]

    file_path = File.join(folder_path, uploaded_io.original_filename)
    File.open(Rails.root.join('lib', file_path), 'wb') do |file|
      file.write(uploaded_io.read)
    end

    data = Roo::Spreadsheet.open('lib/excel/' + params[:import_items][:items_import].original_filename) # open spreadsheet
    headers = data.row(1) # get header row
    data.each_with_index do |row, idx|
      next if idx == 0 # skip header
      # create hash from headers and cells
      user_data = Hash[[headers, row].transpose]

      #Filter import master Data
      if !Brand.exists?(name_brand: user_data['brand'])
        brand = Brand.new
        brand.name_brand = user_data['brand']
        brand.save!
      end

      if !Country.exists?(country_name: user_data['coo'])
        country = Country.new
        country.country_name = user_data['coo']
        country.save!
        @country = Country.last
        if !Vendor.exists?(name: user_data['vendor'])
          vendor = Vendor.new
          vendor.name = user_data['vendor']
          vendor.country_id = @country.id
          vendor.save!
        end
      else
        @country = Country.find_by_country_name(user_data['coo'])
        if !Vendor.exists?(name: user_data['vendor'])
          vendor = Vendor.new
          vendor.name = user_data['vendor']
          vendor.country_id = @country.id
          vendor.save!
        end
      end

      if !Disipline.exists?(name: user_data['discipline'])
        disipline = Disipline.new
        disipline.name = user_data['discipline']
        disipline.save!
      end

      @getDisipline = Disipline.find_by_name(user_data['discipline'])
      @disipline = Disipline.last

      if !Product.exists?(product_name: user_data['product'], disipline_id: @getDisipline.id)
        product = Product.new
        product.product_name = user_data['product']
        product.disipline_id = @getDisipline.name ? @getDisipline.id : @disipline.id
        product.save!
        @product = Product.last

        @getProduct1 = @product.id
      end

      @getProduct = Product.find_by_product_name_and_disipline_id(user_data['product'], @getDisipline.id)
      if !Type.exists?(name_type: user_data['type'], disipline_id: @getDisipline.id, product_id: @getProduct.id)
        @product1 = Product.find_by_id(@getProduct.id)
        type = Type.new
        type.name_type = user_data['type']
        type.product_id = @product.present? ? @product.id : @product1.id
        type.disipline_id = @getDisipline.name ? @getDisipline.id : @disipline.id
        type.save!
        @type = Type.last

        @getProduct2 = @product1.id
        @getType = @type.id
      end

      if !Currency.exists?(current_name: user_data['currency'])
        currency = Currency.new
        currency.current_name = user_data['currency']
        currency.save!
      end

      if !Unit.exists?(unit_name: user_data['unit'])
        unit = Unit.new
        unit.unit_name = user_data['unit']
        unit.save!
      end
      #END

      #Get Data Filter for Import
      @getBrochure = Brochure.find_by_brochure_title(user_data['brochure'])
      @brochure = Brochure.last
      @getBrand = Brand.find_by_name_brand(user_data['brand'])
      @brand = Brand.last
      @getUnit = Unit.find_by_unit_name(user_data['unit'])
      @unit = Unit.last

      @getCountry = Country.find_by_country_name(user_data['coo'])
      @country = Country.last
      @getVendor = Vendor.find_by_name(user_data['vendor'])
      @vendor = Vendor.last
      @getCurrency = Currency.find_by_current_name(user_data['currency'])
      @currency = Currency.last

      @product3 = Product.find_by_disipline_id_and_product_name(@getDisipline.id, user_data['product'])
      @type = Type.find_by_disipline_id_and_product_id(@getDisipline.id, @product3.id)
      #END

      #FILTER IMPORT
      @Items = Item.where(
          brand_id: @getBrand.name_brand ? @getBrand.id : @brand.id,
          disipline_id: @getDisipline.name ? @getDisipline.id : @disipline.id,
          product_id: @getProduct1 ? @getProduct1 : @product3.id,
          type_id: @getType ? @getType : @type.id,
          vendor_id: @getVendor.name ? @getVendor.id : @vendor.id,
          size: user_data['size'],
          class_item: user_data['class_item'],
          dimension: user_data['dimension'],
          general_spec: user_data['general_spec'],
          scope_of_supply: user_data['scope_of_supply'],
          note: user_data['note'],
          others: user_data['other_spec'],
          delivery_point: user_data['delivery_point']
      ).select('*')

      @getItems = Item.exists?(
          brand_id: @getBrand.name_brand ? @getBrand.id : @brand.id,
          disipline_id: @getDisipline.name ? @getDisipline.id : @disipline.id,
          product_id: @getProduct1 ? @getProduct1 : @product3.id,
          type_id: @getType ? @getType : @type.id,
          vendor_id: @getVendor.name ? @getVendor.id : @vendor.id,
          size: user_data['size'],
          class_item: user_data['class_item'],
          dimension: user_data['dimension'],
          general_spec: user_data['general_spec'],
          scope_of_supply: user_data['scope_of_supply'],
          note: user_data['note'],
          others: user_data['other_spec'],
          delivery_point: user_data['delivery_point']
      )

      @getPriceItem = PriceItem.where(item_id: @Items.exists? ? @Items.first.id.to_i : "").exists?(
          country_id: @getCountry.country_name ? @getCountry.id : @country.id,
          vendor_id: @getVendor.name ? @getVendor.id : @vendor.id,
          currency_id: @getCurrency.current_name ? @getCurrency.id : @currency.id,
          note: user_data['note'], project_name: user_data['project_name'],
          delivery_time: user_data['delivery_time'],
          incoterm: user_data['incoterm'],
          vat: user_data['vat'],
          term_payment: user_data['term_payment'],
          price: user_data['price'],
          date: user_data['date']
      )

      @getDetailItem = DetailItem.where(item_id: @Items.exists? ? @Items.first.id.to_i : "").exists?(
          unit_id: @getUnit.unit_name ? @getUnit.id : @unit.id
      )
      # END FILTER IMPORT

      #Import Processes
      if !@getItems || !@getPriceItem || !@getDetailItem
        user = Item.new
        user.brand_id = @getBrand.name_brand ? @getBrand.id : @brand.id
        user.disipline_id = @getDisipline.name ? @getDisipline.id : @disipline.id
        user.product_id = @getProduct1 ? @getProduct1 : @product3.id
        user.type_id = @getType ? @getType : @type.id
        user.vendor_id = @getVendor.name ? @getVendor.id : @vendor.id
        user.size = user_data['size']
        user.class_item = user_data['class_item']
        user.dimension = user_data['dimension']
        user.general_spec = user_data['general_spec']
        user.scope_of_supply = user_data['scope_of_supply']
        user.note = user_data['note']
        user.others = user_data['other_spec']
        user.delivery_point = user_data['delivery_point']

        user.unit_id = @getUnit.unit_name ? @getUnit.id : @unit.id
        user.country_id = @getCountry.country_name ? @getCountry.id : @country.id
        user.currency_id = @getCurrency.current_name ? @getCurrency.id : @currency.id
        user.project_name = user_data['project_name']
        user.delivery_time = user_data['delivery_time']
        user.incoterm = user_data['incoterm']
        user.vat = user_data['vat']
        user.term_payment = user_data['term_payment']
        user.price = user_data['price']
        user.date = user_data['date']
        user.save!
        @setNotive = "Data has been inserted"

        @arrayData = []
        @arrayData = {
            'Disipline : ' => user_data['discipline'],
            'Brand : ' => user_data['brand'],
            'Type : ' => user_data['type'],
            'General Spec : ' => user_data['general_spec']
        }
        setLogActivity("Import data list : " + @arrayData.to_s)
      else
        @setNotive = "There are same data is not inserted"
      end
      #END
    end
    redirect_back(fallback_location: root_path, :notice => @setNotive.to_s)
  end

  def update
  end

  def destroy
  end
end
