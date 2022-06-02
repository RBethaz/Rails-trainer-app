class NameValidator < ActiveModel::Validator

    def validate(record)
            if record.name.nil? || record.name.length != 5
                record.errors.add(:name , 'Le champ doit être de 5 characters' )
            end
            if record.content.nil? || record.content.length != 2
                record.errors.add(:content, 'Le champ doit être de 2 characters')
            end
        end

end