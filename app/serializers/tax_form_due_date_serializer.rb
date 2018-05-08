class TaxFormDueDateSerializer < ActiveModel::Serializer
    attributes(TaxFormDueDate.attribute_names.map(&:to_sym))
end
