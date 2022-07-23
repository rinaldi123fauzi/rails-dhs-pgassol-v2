module PriceLettersHelper
  def getExistFile(id)
    @logo = PriceLetter.find(id)
    file = @logo.price_letter_path
    if file.present?
      file_path = File.join('public/file/', file)
      File.delete(file_path) if File.exist?(file_path)
    end
  end

  def setFile
    folder_path = File.join('price_letters')
    folder = File.join('file')

    if !Dir.exist? folder_path
      FileUtils::mkdir_p (Rails.root.join('public', folder, folder_path))
    end

    uploaded_io = params[:price_letter][:price_letter_path]

    file_path = File.join(folder_path, uploaded_io.original_filename)
    File.open(Rails.root.join('public', folder, file_path), 'wb') do |file|
      file.write(uploaded_io.read)
    end
    nama_file = file_path
    return nama_file
  end

  def updateFile
    @file = PriceLetter.find(params[:id])
    file = @file.price_letter_path
    file_path = File.join('public/file/', file)
    File.delete(file_path) if File.exist?(file_path)

    folder_path = File.join('price_letters')
    folder = File.join('file')

    if !Dir.exist? folder_path
      FileUtils::mkdir_p (Rails.root.join('public', folder, folder_path))
    end

    uploaded_io = params[:price_letter][:price_letter_path]

    file_path = File.join(folder_path, uploaded_io.original_filename)
    File.open(Rails.root.join('public', folder, file_path), 'wb') do |file|
      file.write(uploaded_io.read)
    end
    nama_file = file_path
    return nama_file
  end
end
