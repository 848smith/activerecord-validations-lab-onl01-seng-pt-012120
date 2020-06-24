class PostValidator < ActiveModel::Validator
  def validate(record)
    array = ["Won't Believe", "Secret", "Top [number]", "Guess"]
    if array.any? {|string| record.include?(string)}.nil?
      record.errors[:title] << "Has to be clickbait"
    end
  end
end