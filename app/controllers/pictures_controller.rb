class PicturesController < ApplicationController


  def show
  @picture = Picture.find (params[:id])
  end

  def index
  @picture_list = Picture.all
  end

  def new
  #why don´t I have to write anything here - how come this can goes to new
  end

  def create
    p = Picture.new
    p.caption = params[:caption]
    p.source = params[:source]
    p.save
    redirect_to pictures_url, :notice => "Picture has been added...alriiiggght"
 #why don´t I have to write anything here - how come this can goes to new
  end

  def destroy
    Picture.find(params[:id]).destroy
    redirect_to pictures_url, :notice => "Picture has been toasted..I smell smoke"
  end

  def edit
  @picture = Picture.find(params[:id])
  end

  def update
   p = Picture.find(params[:id])
   p.caption = params[:caption]
    p.source = params[:source]
    p.save
     redirect_to pictures_url, :notice => "Picture has been updated"
  end

end
