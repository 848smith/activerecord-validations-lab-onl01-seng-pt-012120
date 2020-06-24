class PostValidator < ActiveModel::Validator
  def validate(record)
    if record.post.include?()
    record.errors[:post] << false
  end
end