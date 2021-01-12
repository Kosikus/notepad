class Post
  def initialize
    @created_at = Time.now
    @text = nil
  end

  def read_from_console
    # @text = STDIN.gets.encode('UTF-8').chomp
    # TODO
  end

  def content
    # TODO
  end

  def save
    file_name = @created_at.strftime("#{self.class}_%Y_%m_%d_%H_%M_%S.txt")

    File.write(File.join(__dir__, file_name), content)
  end

  def file_path
    file_name = @created_at.strftime("#{self.class}_%Y_%m_%d_%H_%M_%S.txt")
  end


end
