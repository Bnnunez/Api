class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :subtitle, :body


  def body
    object.body[0,500]+"..."
  end


end
