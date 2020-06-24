class PostValidator < ActiveModel::Validator
  def validate(record)
    array = ["Won't Believe", "Secret", "Top [number]", "Guess"]
    if record.title.include?()
      record.errors[:post] << false
    end
  end
end