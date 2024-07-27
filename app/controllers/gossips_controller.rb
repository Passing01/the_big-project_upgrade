class GossipsController < ApplicationController
  def add_tag
    gossip = Gossip.find(params[:gossip_id])
    tag = Tag.find(params[:tag_id])

    gossip.tags << tag
    redirect_to gossip_path(gossip), notice: "Tag ajouté avec succès"
  end
end

