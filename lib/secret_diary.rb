class SecretDiary

  def initialize
    @locked = true
  end

  def add_entry(text)
    if @locked == true
      "Diary is locked"
    else
      text
    end
  end

  def get_entries
    "Diary is locked"
  end

  def unlock
    @locked = false
    "Diary has been unlocked"
  end
end
