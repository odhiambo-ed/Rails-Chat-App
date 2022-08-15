class groupChannel < ApplicationCable::Channel
  def subscribed
    group = group.find params[:group]
    stream_for group

  end
end