class StudentsController < ApplicationController
  
  def index
    @student = Student.all
  end
  
  def new
    @student = Student.new #←データを入れるためでなくformヘルパーのため
  end
  
  def create
   @student = Student.new(number: params[:student][:number], name: params[:student][:name], mail: params[:student][:mail])
    if @student.save
      flash[:notice] = '1レコード追加しました'
      redirect_to '/' 
    else  
    render 'new'
    end 
    
  end
  
  def destroy
    student = Student.find(params[:id])
    student.destroy
    flash[:notice] = '1レコード削除しました'
    redirect_to '/'
  end
  
  def show
    @student = Student.find(params[:id])
  end
  
  def edit
    @student = Student.find(params[:id])
  end
  
   def update
     @student = Student.find(params[:id])
     @student.update(number: params[:student][:number], name: params[:student][:name], mail: params[:student][:mail])
    if @student.save
      flash[:notice] = '1レコード更新しました'
      redirect_to '/' 
    else 
    render 'edit'
    end
   
   end
   
end

