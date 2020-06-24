class PostValidator < ActiveModel::Validator
  def validate(record)
    if record.post.match?(/Won't Believe/)
    record.errors[:post] << false
  end
end