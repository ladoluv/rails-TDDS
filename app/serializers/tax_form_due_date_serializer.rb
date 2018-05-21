class TaxFormDueDateSerializer < ActiveModel::Serializer
    attributes(TaxFormDueDate.attribute_names.map(&:to_sym))
    attribute :return_filters
    def return_filters
       TaxFormDueDate.set_dropdown_obj
    end
end
