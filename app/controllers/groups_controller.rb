class GroupsController < ApplicationController
  before_action :set_group, only: %i[show edit update destroy]
  before_action :set_statuses, only: %i[edit new]
  # http_basic_authenticate_with name: "G44", password: "123456", only: :new
  
  def index
    if params[:q]
      @groups = Group.where('name LIKE ?', "%#{params[:q]}%")
      if @groups.nil?
        @groups = Group.all
      end
    else
      @groups = Group.all
    end
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

  def set_statuses
    @statuses = Group.statuses.keys
  end
  

  def set_group
    @group = Group.find(params[:id])
  end
  

  def group_params
    params.require(:group).permit(:name, :members, :email, :nick_name, :phone, :status)
  end
  
end
