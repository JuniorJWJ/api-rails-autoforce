module Api
    module V1
      class VehiclesController < ApplicationController
        # GET /api/v1/vehicles
        def index
          render json: vehicles_data
        end
  
        # GET /api/v1/vehicles/:id
        def show
          vehicle = vehicles_data.find { |v| v[:id] == params[:id].to_i }
          
          if vehicle
            render json: vehicle
          else
            render json: { error: "Vehicle not found" }, status: :not_found
          end
        end
  
        private
  
        def vehicles_data
          [
            {
              id: 1,
              year: "2023",
              brand: "Chevrolet",
              model: "Tracker",
              subtitle: "1.2 TURBO FLEX RS AUTOMATICO",
              transmission: "AUTOMÁTICO",
              mileage: "1 KM",
              fuel: "FLEX",
              price: "R$ 190.440,00",
              image_url: "carro.jpg",
              badges: [
                { text: "TURBO", type: "turbo" },
                { text: "RS", type: "rs" }
              ]
            },
            {
              id: 2,
              year: "2022",
              brand: "Volkswagen",
              model: "T-Cross",
              subtitle: "1.4 TSI TOTAL FLEX AUTOMATIC",
              transmission: "AUTOMÁTICO",
              mileage: "15.000 KM",
              fuel: "FLEX",
              price: "R$ 120.990,00",
              image_url: "car1.jpg",
              badges: [
                { text: "TOP", type: "top" }
              ]
            },
            {
              id: 3,
              year: "2021",
              brand: "Fiat",
              model: "Toro",
              subtitle: "2.0 DIESEL AUTOMATIC",
              transmission: "AUTOMÁTICO",
              mileage: "20.000 KM",
              fuel: "DIESEL",
              price: "R$ 155.900,00",
              image_url: "car3.jpg",
              badges: [
                { text: "TURBO", type: "turbo" }
              ]
            },
            {
              id: 4,
              year: "2020",
              brand: "Honda",
              model: "HR-V",
              subtitle: "1.8 FLEX AUTOMATIC",
              transmission: "AUTOMÁTICO",
              mileage: "30.000 KM",
              fuel: "FLEX",
              price: "R$ 98.990,00",
              image_url: "car6.jpg",
              badges: []
            },
            {
              id: 5,
              year: "2019",
              brand: "Toyota",
              model: "Corolla",
              subtitle: "2.0 FLEX AUTOMATIC",
              transmission: "AUTOMÁTICO",
              mileage: "40.000 KM",
              fuel: "FLEX",
              price: "R$ 110.990,00",
              image_url: "car5.jpg",
              badges: [
                { text: "HYBRID", type: "hybrid" }
              ]
            }
          ]
        end
      end
    end
  end