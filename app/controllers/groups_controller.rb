class GroupsController < ApplicationController
  before_action :set_group, only: %i[show edit update destroy]
  # http_basic_authenticate_with name: "G44", password: "123456", only: :new
  
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)

    if @group.save
      redirect_to root_path
    else
      render :new
    end

    # respond_to do |format|
    #   if @group.save
    #     format.html { redirect_to root_path, notice: "La re creaste jeje saludos" }
    #   else
    #     format.html { render :new }
    #   end
    # end

  end

  def show
  end
  
  def edit
  end

  def update
    if @group.update(group_params)
      redirect_to @group
    else
      render :edit
    end
  end
  
  def destroy
    @group.destroy
    redirect_to root_path
  end
  

  private

  def set_group
    @group = Group.find(params[:id])
  end
  

  def group_params
    params.require(:group).permit(:name, :members, :email, :nick_name, :phone)
  end
  
end
