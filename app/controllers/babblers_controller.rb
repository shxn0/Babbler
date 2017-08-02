class BabblersController < ApplicationController
  before_action :set_babbler, only:[:edit, :update, :destroy]
  
  def index
    @babblers = Babbler.all.order(id: :desc)
  end

  def new
    if params[:back]
      @babbler = Babbler.new(babblers_params)
    else
    @babbler = Babbler.new
    end
  end
  
  def create
    @babbler = Babbler.create(babblers_params)
    if @babbler.save
      redirect_to babblers_path, notice:'Your Babble has been created'
    else
      render 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @babbler.update(babblers_params)
      redirect_to babblers_path, notice:'Your Babbler has been updated'
    else
      render'edit'
    end
  end
  
  def destroy
    @babbler.destroy
    redirect_to babblers_path, notice:'Your Babble has been deleted'
  end

  def confirm
    @babbler= Babbler.new(babblers_params)
    render :new if @babbler.invalid?
  end

private 
  def babblers_params
    params.require(:babbler).permit(:title, :content)
  end
  
  def set_babbler
    @babbler = Babbler.find(params[:id])
  end


end
