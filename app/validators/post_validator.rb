class PostValidator < ActiveModel::Validator
  def validate(record)
    array = ["Won't Believe", "Secret", "Top [number]", "Guess"]
    if array.detect {|string| record.title.include?(string)}.nil?
      record.errors[:title] << false
    end
  end
end