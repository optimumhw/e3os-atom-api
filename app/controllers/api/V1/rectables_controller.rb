module Api
	module V1
		class RectablesController < ApplicationController
			def index
				rectables = Rectable.order('created_at DESC');
				render json: {status: 'SUCCESS', message: 'Loaded rectables', data:rectables }, status: :ok
			end

			def show
				rectable = Rectable.find(params[:id])
				render json: {status: 'SUCCESS', message: 'Loaded rectable', data:rectable }, status: :ok
			end

			def create
				rectable = Rectable.new( rectable_params )

				if rectable.save
					render json: {status: 'SUCCESS', message: 'rectable saved', data:rectable }, status: :ok
				else
					render json: {status: 'ERROR', message: 'rectable not saved', 
						data:rectable.errors }, status: :unprocessable_entity
				end
			end

			def destroy
				rectable = Rectable.find(params[:id])
				rectable.destroy
				render json: {status: 'SUCCESS', message: 'Deleted rectable', data:rectable }, status: :ok

			end

			def update
				rectable = Rectable.find(params[:id])
				if rectable.update_attributes( rectable_params )
					render json: {status: 'SUCCESS', message: 'rectable updated', data:rectable }, status: :ok
				else
					render json: {status: 'ERROR', message: 'rectable not updated', 
						data:rectable.errors }, status: :unprocessable_entity
				end

			end


			private

			def rectable_params
				params.permit(:site_id, :number_chillers)

			end

		end
	end
end