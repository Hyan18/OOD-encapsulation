class SecretDiary

  def initialize
    @locked = true
  end

  def add_entry(text)
    if @locked
      "Diary is locked"
    else
      text
    end
  end

  def get_entries
    if @locked
      "Diary is locked"
    else
      "first entry"
    end
  end

  def unlock
    @locked = false
    "Diary has been unlocked"
  end
end
