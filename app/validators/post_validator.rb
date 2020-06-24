class PostValidator < ActiveModel::Validator
  def validate(record)
    if record.title.include?("Won't Believe", "Secret", "Top [number]", "Guess")
      record.errors[:post] << false
    end
  end
end