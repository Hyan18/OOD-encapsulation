class SecretDiary

  def initialize
    @locked = true
    @entries = []
  end

  def add_entry(text)
    if @locked
      "Diary is locked"
    else
      @entries.push(text)
    end
  end

  def get_entries
    if @locked
      "Diary is locked"
    else
      @entries.each { |entry|
        puts entry
      }
    end
  end

  def unlock
    @locked = false
    "Diary has been unlocked"
  end
end
