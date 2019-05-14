class V1::BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :weight, :publisher, :language, :pages, :publication_date
  #this function gives the format y-m-d to the publication_date, the property has to be declared upside
  def publication_date
    object.publication_date.strftime "%Y-%m-%d"
  end
end
#rails g serializer v1/book this command creates the serializer
# gem 'active_model_serializers', '~> 0.10.0' and this is the gem