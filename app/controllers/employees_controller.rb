class EmployeesController < ApplicationController
  def new
    @user = Employee.new
  end

  def create
    @user = Employee.new(employee_params)
    flash[:notice] = "You have successfully registered."
   
    if @user.save
       

      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    #@user = params[:name]
   
    unless session[:name].nil?
      @user = session[:name]
      cookies.delete(:name)
    else
      redirect_to login_user_path 
    
    end
  end
  def index
    @user = Employee.all
  end

  def login_user
    emp = Employee.find_by(email: params[:email],password: params[:password])
     if emp
      name = emp.name
      session[:name] = name
       
      redirect_to show_path
     end
     
  end
  def login
  end

  private
  def employee_params
    params.require(:employee).permit(:email, :name, :password)
  end

end
