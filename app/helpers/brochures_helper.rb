module BrochuresHelper
  def getExistFile(id)
    @file = Brochure.find(id)
    file = @file.brochure_path
    if file.present?
      file_path = File.join('public/file/', file)
      File.delete(file_path) if File.exist?(file_path)
    end
  end
end
