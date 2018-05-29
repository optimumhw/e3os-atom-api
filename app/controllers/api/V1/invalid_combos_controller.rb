module Api
	module V1
		class InvalidCombosController < ApplicationController
			def index
				invalid_combos = InvalidCombo.order('created_at DESC');
				render json: {status: 'SUCCESS', message: 'Loaded invalid_combos', data:invalid_combos }, status: :ok
			end

			def show
				invalid_combo = InvalidCombo.find(params[:id])
				render json: {status: 'SUCCESS', message: 'Loaded invalid_combo', data:invalid_combo }, status: :ok
			end

			def create
				invalid_combo = InvalidCombo.create!( invalid_combo_params )
				render status: :created, json: invalid_combo.as_json
			end

			def destroy
				invalid_combo = InvalidCombo.find(params[:id])
				invalid_combo.destroy
				render json: {status: 'SUCCESS', message: 'Deleted invalid_combo', data:rectable }, status: :ok
			end

			def update
				invalid_combo = InvalidCombo.find(params[:id])
				if invalid_combo.update_attributes( rectable_params )
					render json: {status: 'SUCCESS', message: 'invalid_combo updated', data:invalid_combo }, status: :ok
				else
					render json: {status: 'ERROR', message: 'invalid_combo not updated', 
						data:invalid_combo.errors }, status: :unprocessable_entity
				end
			end


			private

			def invalid_combo_params
				params.permit(:site_id, :number_chillers, :invalid_entries => [])
			end

		end
	end
end