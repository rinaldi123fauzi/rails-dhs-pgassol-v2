module DisiplinesHelper
  def getExistLogo(id)
    @logo = Disipline.find(id)
    file = @logo.logo
    if file.present?
      file_path = File.join('app/assets/images/', file)
      File.delete(file_path) if File.exist?(file_path)
    end
  end

  def setLogo
    folder_path = File.join('logo_items')

    if !Dir.exist? folder_path
      FileUtils::mkdir_p (Rails.root.join('app/assets/images/', folder_path))
    end

    uploaded_io = params[:disipline][:logo]
    file_path = File.join(folder_path, uploaded_io.original_filename)
    File.open(Rails.root.join('app/assets/images/', file_path), 'wb') do |file|
      file.write(uploaded_io.read)
    end
    nama_file = file_path
    return nama_file
  end

  def updateLogo
    @logo = Disipline.find(params[:id])
    file = @logo.logo
    file_path = File.join('app/assets/images/', file)
    File.delete(file_path) if File.exist?(file_path)

    folder_path = File.join('logo_items')

    if !Dir.exist? folder_path
      FileUtils::mkdir_p (Rails.root.join('app/assets/images/', folder_path))
    end

    uploaded_io = params[:disipline][:logo]
    file_path = File.join(folder_path, uploaded_io.original_filename)
    File.open(Rails.root.join('app/assets/images/', file_path), 'wb') do |file|
      file.write(uploaded_io.read)
    end
    nama_file = file_path
    return nama_file
  end
end
