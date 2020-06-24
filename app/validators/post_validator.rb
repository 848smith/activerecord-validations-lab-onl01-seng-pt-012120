class PostValidator < ActiveModel::Validator
  def validate(record)
    if record.title
      array = ["Won't Believe", "Secret", "Top [number]", "Guess"]
      if array.any? {|el| record.title.include?(el) }.nil?
        record.errors[:title] << "Has to contain clickbait"
      end
    end
  end
end