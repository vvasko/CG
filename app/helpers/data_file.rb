module DataFile
  require 'fileutils'
  @white_list = %w(doc docx pdf)

  def self.save_file (file, path)
    original_filename = self.get_original_filename file
    file_data = file.read
    extension = self.get_file_extension file
    folder_name = self.generate_folder_name file

    if self.in_white_list? extension
      @folder_path = self.create_folders path, folder_name
      @file_path = @folder_path + "/#{original_filename}";
      self.save_file_data @file_path, file_data
    end
  end

  def self.remove_last_folder
    self.remove_folder @folder_path
  end

  def self.remove_folder folder_path
    FileUtils.remove_dir folder_path, true
  end

  def self.in_white_list? extension
    return @white_list.include? extension
  end

  protected
  def self.create_folders path, folder_name
    Dir.mkdir path unless File.exists? path
    folder_path = path.to_path + "/#{folder_name}"
    Dir.mkdir folder_path unless File.exists? folder_path
    return folder_path
  end

  protected
  def self.generate_folder_name file
    self.get_file_name(file) + Time.now.to_i.to_s
  end

  protected
  def self.get_file_extension file
    self.get_original_filename(file).split('.').last
  end

  protected
  def self.get_original_filename file
    file.original_filename
  end

  protected
  def self.get_file_name file
    self.get_original_filename(file).split('.').first
  end

  protected
  def self.save_file_data path, file_data
    File.open(path, 'wb') do |file|
      file.write(file_data)
    end
  end
end