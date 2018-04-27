class TaxFormDueDateSerializer < ActiveModel::Serializer
    attributes(TaxFormDueDates.attribute_names.map(&:to_sym))
end
