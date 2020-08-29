require "pry"
class Todo
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
    puts "#{task.info} を追加しました。"
  end

  def info
    puts "<タスク一覧>"
    @tasks.each do|task|
      puts task.info
    end
  end

  def delete(id:)
    delete_task = @tasks.find{|task| task.id == id}
    if delete_task.nil?
      puts "タスクを削除する際は、タスク一覧にあるタスクNo.を指定して下さい。"
    else
      @tasks.delete(delete_task)
      puts "#{delete_task.info} を削除しました。"
    end
  end
end