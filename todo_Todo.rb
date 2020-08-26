class Todo
  def initialize(tasks)
    @tasks = tasks
  end

  def add(task)
    puts "#{task.info} を追加しました。"
  end

  def info
    puts "<タスク一覧>"
    @tasks.each do|task|
      puts "#{task.info}"
    end
  end

  def delete(id:)
    puts "#{@tasks[id-1].info} を削除しました。"
    @tasks.delete_at(id-1)
  end
end