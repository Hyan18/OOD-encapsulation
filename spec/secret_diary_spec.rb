require 'secret_diary'

describe SecretDiary do
  describe '#add_entry' do
    it "should throw an error when the diary is locked" do
      secret_diary = SecretDiary.new
      expect(secret_diary.add_entry).to eq("Diary is locked")
    end
  end
end
