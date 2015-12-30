module DataFile
  require 'fileutils'

  def self.save_file (file, path)
    folder_path = self.create_folders path, self.generate_folder_name(file)
    @file_path = folder_path + "/#{self.get_original_filename(file)}";
    self.save_file_data @file_path, file.read
  end

  def self.remove_folder folder_path
    FileUtils.remove_dir folder_path, true
  end

  def self.in_white_list? extension, list
    white_list = list || %w(doc docx pdf)
    return white_list.include? extension
  end

  def self.create_folders path, folder_name
    Dir.mkdir path unless File.exists? path
    folder_path = path.to_path + "/#{folder_name}"
    Dir.mkdir folder_path unless File.exists? folder_path
    return folder_path
  end

  def self.generate_folder_name file
    self.get_file_name(file) + Time.now.to_i.to_s
  end

  def self.get_file_extension file
    self.get_original_filename(file).split('.').last
  end

  def self.get_original_filename file
    file.original_filename
  end

  def self.get_file_name file
    self.get_original_filename(file).split('.').first
  end

  def self.save_file_data path, file_data
    File.open(path, 'wb') do |file|
      file.write(file_data)
    end
  end
end