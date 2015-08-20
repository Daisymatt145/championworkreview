class ChampionworksController < ApplicationController
def index
 @championworks = Championwork.all
 end
 def show
   @championwork  =  Championwork.find(params[:id])
 end
 def new
   @championwork  =  Championwork .new
    flash[:notice] = "Champion work successfully created"
 end

 def create
    @championwork  =  Championwork.new(post_params)
   if  @championwork.save
   redirect_to  championworks_path , :notice => "Your form is been submitted"
   else
    render "new"
   end
  end

  def edit
  @championwork = Championwork.find(params[:id])
   end

  def update
   @championwork  =  Championwork .find(params[:id])
   if( @championwork.update_attributes(update_params))
    redirect_to   championworks_path , :notice => "Your form is been updated"
    else
     render "edit"
     end
  end
  def destroy
    #@championwork  =  Championwork.find(params[:id])
     @championwork  =  Championwork.find(params[:id])
     @championwork.destroy
     redirect_to   championworks_path , :notice => "Your post is been Deleted"
   end

   private
   def  post_params
     params.require(:championwork ).permit(:workcategory,:description)
     #params.require(:championwork ).permit(:championwork)
   end


         private
            def update_params
             params.require(:championwork ).permit(:workcategory,:description)
             #params.require(:championwork ).permit(:championwork )
             # redirect_to   championworks_path , :notice => "Your post is been updated "
          end

end


