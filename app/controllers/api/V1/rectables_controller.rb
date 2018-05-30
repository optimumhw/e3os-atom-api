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
				rectable = Rectable.create!( rectable_params )
				render status: :created, json: rectable.as_json
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
				elseß
					render json: {status: 'ERROR', message: 'rectable not updated', 
						data:rectable.errors }, status: :unprocessable_entity
				end
			end

			def latest
				rectable = Rectable.latest!( params[:site_id])
				render json: {status: 'SUCCESS', message: 'Loaded latest rectable', data:rectable }, status: :ok
			end

			private

			def rectable_params
				params.permit(:site_id, :number_chillers, :staging_order => [], :staging_table => [])
			end

		end
	end
end