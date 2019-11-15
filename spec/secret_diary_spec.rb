require 'secret_diary'

describe SecretDiary do
  describe '#add_entry' do
    it "should throw an error when the diary is locked" do
      secret_diary = SecretDiary.new
      expect(secret_diary.add_entry("text")).to eq("Diary is locked")
    end
    it "should add an entry whilst the diary is unlocked" do
      secret_diary = SecretDiary.new
      secret_diary.unlock
      expect(secret_diary.add_entry("text")).to eq(["text"])
    end
  end

  describe '#get_entries' do
    it "should throw an error when the diary is locked" do
      secret_diary = SecretDiary.new
      expect(secret_diary.get_entries).to eq("Diary is locked")
    end
    it "should display an entry when the diary is unlocked" do
      secret_diary = SecretDiary.new
      secret_diary.unlock
      secret_diary.add_entry("first entry")
      expect{secret_diary.get_entries}.to output("first entry\n").to_stdout
    end
    it "should display multiple entries on new lines when the diary is unlocked" do
      secret_diary = SecretDiary.new
      secret_diary.unlock
      secret_diary.add_entry("first entry")
      secret_diary.add_entry("second entry")
      expect{secret_diary.get_entries}.to output("first entry\nsecond entry\n").to_stdout
    end
  end

  describe '#unlock' do
    it "should unlock the diary" do
      secret_diary = SecretDiary.new
      expect(secret_diary.unlock).to eq("Diary has been unlocked")
    end
  end
end
