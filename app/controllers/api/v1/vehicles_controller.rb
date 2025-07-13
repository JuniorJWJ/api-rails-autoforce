module Api
    module V1
      class VehiclesController < ApplicationController
        # GET /api/v1/vehicles
        def index
          render json: VehicleData.all
        end
        
        # GET /api/v1/vehicles/:id
        def show
          vehicle = VehicleData.all.find { |v| v[:id] == params[:id].to_i }
          
          if vehicle
            render json: vehicle
          else
            render json: { error: "Vehicle not found" }, status: :not_found
          end
        end

        # GET /api/v1/vehicle/promotion
        def promotion
          promo_vehicle = VehicleData.all.find { |v| v[:promotion] == true }
          if promo_vehicle
            render json: promo_vehicle
          else
            render json: { error: "No promotion vehicle found" }, status: :not_found
          end
      end
      end
    end
  end