class Task
  attr_reader :id
  @@count = 0
  def initialize(name:,content:)
    @id = @@count += 1
    @name = name
    @content = content
  end

  def info
    "タスクNo.#{@id} #{@name}:#{@content}"
  end
end