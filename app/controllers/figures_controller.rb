class FiguresController < ApplicationController

	get '/figures' do 
		@figures = Figure.all
		erb :'/figures/index'
	end

	get '/figures/new' do  
  	erb :'/figures/new'
  end

  post '/figures' do
  	#binding.pry
		@figure = Figure.new(params[:figure])
		@figure.titles << Title.create(params[:title]) unless params[:title][:name].empty?
		@figure.landmarks << Landmark.create(params[:landmark]) unless params[:landmark][:name].empty?
    @figure.save
		erb :'/figures/show', locals: {message: "Successfully created figure."}
	end

	get '/figures/:id' do
		@figure = Figure.find_by_id(params[:id])
		erb :'/figures/show'
	end

	get '/figures/:id/edit' do
     @figure = Figure.find_by_id(params[:id])
  	erb :'/figures/edit'
  end

  patch '/figures/:id' do
    @figure = Figure.find_by_id(params[:id])
		@figure.update(params[:figure])
		@figure.titles << Title.create(params[:title]) unless params[:title][:name].empty?
		@figure.landmarks << Landmark.create(params[:landmark]) unless params[:landmark][:name].empty?
    @figure.save
    erb :'/figures/show', locals: {message: "Figure successfully updated."}
  end
end
