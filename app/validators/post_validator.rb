class PostValidator < ActiveModel::Validator
  def validate(record)
    if record.post.match?(/Won't Believe/)
    record.errors[:post] << "We're only allowed to have people who work for the company in the database!"
  end
end