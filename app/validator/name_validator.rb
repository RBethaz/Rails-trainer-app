class NameValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    if value.nil? || value.length != 2
        record.errors.add(attribute, 'doit avoir 2 caractères')
    end
end

end